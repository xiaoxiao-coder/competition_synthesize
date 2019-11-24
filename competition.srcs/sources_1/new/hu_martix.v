`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 14:41:06
// Design Name: 
// Module Name: hu_martix
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//hu矩阵算法，学习手势的特征。不受平移，旋转，镜像，尺度变化等等的影响（尺度变化时貌似整体图片变小了，为了不改变图片大小，只变手势大小的情况，肤色提取时将都赋值为0了）
//灰度化，再中值滤波，sobel算子提取边缘有利于提高其鲁棒性
module hu_martix(input              clk,
                 input              rst_n,
                 input [9:0]        hcount,
                 input [9:0]        vcount,
                 input              per_data,//sobel后的数据传过来，一位
                 input              per_clken,
                 input              gesture_study,//拨码开关，使得进入学习状态
                 input              gest_one,//手势1学习
                 input              gest_two,//手势2学习
                 input              gest_three,
                 input              gest_four,
                 input              gest_five,
                 output  reg [63:0] gest1_up,//手势1特征值上限，学习获得
                 output  reg [63:0] gest1_low,//下限
                 output  reg [63:0] gest2_up,//手势2特征值
                 output  reg [63:0] gest2_low,
                 output  reg [63:0] gest3_up,
                 output  reg [63:0] gest3_low,
                 output  reg [63:0] gest4_up,
                 output  reg [63:0] gest4_low,
                 output  reg [63:0] gest5_up,
                 output  reg [63:0] gest5_low,
                 output  reg [63:0] nochange_martix,//传回实时手势的特征值

                 output   [63:0]     n_02_add_20,//不变矩
                 output              n_02_add_20_clken,//不变矩时钟

                 output  reg [7:0]  wx,//数码管位选
                 output  reg [6:0]  dx,//数码管段选1
                 output  reg [6:0]  dx2,//数码管段选2

                 //矩心计算
                 output [23:0]focus_x,
                 output [23:0]focus_y
                 );

//p,q为00
reg [23:0]m_00;//m_pq,除法器需要8的倍数的位数，然而16不够，只好用24位
reg [23:0]m_01;
reg [23:0]m_10;
parameter hdat_begin   = 10'd143,
          vdat_begin   = 10'd34,
          picture_x    = 50,//图片左上角
          picture_y    = 50,
          picture_long = 320,
          picture_high = 240;//图片大小.
always @(posedge clk,posedge rst_n) begin
    if (!rst_n) begin
        m_00<=0; 
        m_01<=0;
        m_10<=0;   
    end
    else if (per_clken) begin
        if (per_data==1) begin
            m_00<=m_00+1;
            m_01<=m_01+(vcount-vdat_begin-picture_y);//以原图像左上角为原点
            m_10<=m_10+(hcount-hdat_begin-picture_x);
        end
        else begin
            m_00<=m_00;
            m_01<=m_01;
            m_10<=m_10;
        end
    end
    else if ((vcount==vdat_begin+picture_y+picture_high) && hcount==780) begin//在一帧图像结束时候清0，但经过几次处理后，都平移延迟了，所以取该列最后几行的时刻
        m_00<=0;
        m_01<=0;
        m_10<=0;
    end
end

//除法器，计算矩心
assign div_en=((vcount==vdat_begin+picture_y+picture_high) && hcount==780);//除法器使能信号
wire [47:0]x0;//高24位是整数，低24位小数
wire x0_en;
wire [47:0]y0; 
wire y0_en;
div_gen_0 u_div_gen_0(
    .aclk                    (clk),
    .s_axis_divisor_tvalid   (div_en),
    .s_axis_divisor_tdata    (m_00),
    .s_axis_dividend_tvalid  (div_en),
    .s_axis_dividend_tdata   (m_10),
    .m_axis_dout_tvalid      (x0_en),//
    .m_axis_dout_tdata       (x0)//重心最大不超过200
);  
div_gen_0 u2_div_gen_0(
    .aclk                    (clk),
    .s_axis_divisor_tvalid   (div_en),
    .s_axis_divisor_tdata    (m_00),
    .s_axis_dividend_tvalid  (div_en),
    .s_axis_dividend_tdata   (m_01),
    .m_axis_dout_tvalid      (y0_en),//两个使能信号应该是同步产生的
    .m_axis_dout_tdata       (y0)//重心最大不超过142
);  

//矩心输出作为动态手势识别
assign focus_x=x0[47:24];
assign focus_y=y0[47:24];

//计算中心矩，第一帧数据时是得不到中心矩，可以说延迟了一个帧。中心矩进行流水线解决(防止时序出问题,顺便解决正负问题);
wire [33:0]hcount_decimal=hcount<<24;//都放大了2的24次方，为了和x0、y0比较，保留小数精度，
wire [33:0]vcount_decimal=vcount<<24;
wire [33:0]hdat_begin_decimal=hdat_begin<<24;
wire [33:0]vdat_begin_decimal=vdat_begin<<24;
wire [33:0]picture_x_decimal=picture_x<<24;
wire [33:0]picture_y_decimal=picture_y<<24;
//流水线第一步先进行加减,需要一个时钟
/*reg [9:0]x_z;//存储x-x0为正数情况
reg [9:0]x_f;//存储x-x0为负数情况
reg [9:0]y_z;
reg [9:0]y_f;
always @(posedge clk,negedge rst_n) begin//这个考虑到二阶矩负数情况，我们只需要一阶
    if (!rst_n) begin
        x_z<=0;
        x_f<=0;
        y_z<=0;
        y_f<=0;    
    end
    else begin
        x_z<=(hcount>hdat_begin+picture_x+x0) ? (hcount-hdat_begin-picture_x-x0):0; //不能hcount-hdat_begin-picture_>0,溢出照样大于0
        x_f<=(hcount<hdat_begin+picture_x+x0) ? (hdat_begin+picture_x-hcount-x0):0;
        y_z<=(vcount>vdat_begin+picture_y+y0) ? (vcount-vdat_begin-picture_y-y0):0;
        y_z<=(vcount<vdat_begin+picture_y+y0) ? (vdat_begin+picture_y-vcount-y0):0;
    end
end*/
reg [33:0]x;//存储x-x0绝对值(同时包含了f(x,y))，保存24位二进制小数，即乘了2^24
reg [33:0]y;
always @(posedge clk,negedge rst_n) begin//这个考虑到二阶矩负数情况，我们只需要一阶
    if (!rst_n) begin
        x<=0; 
        y<=0;  
    end
    else if(per_clken) begin
        if (per_data==1) begin//以原图像左上角为原点       
            x<=(hcount_decimal>(hdat_begin_decimal+picture_x_decimal+x0)) ? (hcount_decimal-hdat_begin_decimal-picture_x_decimal-x0):(hdat_begin_decimal+picture_x_decimal+x0-hcount_decimal); //不能hcount-hdat_begin-picture_>0,溢出照样大于0
            y<=(vcount_decimal>(vdat_begin_decimal+picture_y_decimal+y0)) ? (vcount_decimal-vdat_begin_decimal-picture_y_decimal-y0):(vdat_begin_decimal+picture_y_decimal+y0-vcount_decimal);
        end
        else begin
            x<=0;
            y<=0;
        end
    end
end

//第二步各个次方，需要第二个时钟
reg [67:0]xy_power_00;//xy 00次幂
reg [67:0]xy_power_02;//xy 各02次幂
reg [67:0]xy_power_20;
always @(posedge clk,negedge rst_n) begin
    if(!rst_n)begin
        xy_power_00<=0;
        xy_power_02<=0;
        xy_power_20<=0;
    end
    else begin
        xy_power_00<=(x==0 && y==0)? 0:1;//因为xy_power不仅仅代表xy，还有f(x,y)
        xy_power_02<=y*y;//扩大了2的48次方(因为小数扩大了2的24次方)
        xy_power_20<=x*x;
    end
end

//第三步，求和。由于求和是累加的，不仅仅受到当前数据影响，还受到以前所有数影响，所以必须加上时钟了
reg 	[1:0]	per_clken_r;
wire    post_clken;
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		per_clken_r <= 2'b0;
	else 
		per_clken_r <= {per_clken_r[0], per_clken};
end
assign	post_clken 	= 	per_clken_r[1];//时钟使能
reg [79:0]u_00_decimal;//整数32位，绝对足够
reg [79:0]u_02_decimal;
reg [79:0]u_20_decimal;
always @(posedge clk,posedge rst_n) begin
    if (!rst_n) begin
        u_00_decimal<=0; 
        u_02_decimal<=0;
        u_20_decimal<=0;   
    end
    else if (post_clken) begin
            u_00_decimal<=u_00_decimal+xy_power_00;
            u_02_decimal<=u_02_decimal+xy_power_02;
            u_20_decimal<=u_20_decimal+xy_power_20;
    end
    else if ((vcount==vdat_begin+picture_y+picture_high)&&hcount==780) begin//该行接近结束的地方
            u_00_decimal<=0;
            u_02_decimal<=0;
            u_20_decimal<=0;
    end
end

wire [31:0]u_00=u_00_decimal[31:0];//0次幂是没有进行扩大的，所以不需要
wire [31:0]u_02=u_02_decimal[79:48];//取23位整数,23位应该够了
wire [31:0]u_20=u_20_decimal[79:48];
//最后一步,归一化
reg [31:0]u_00_power_2;//二次方,消耗一个时钟
reg [31:0]u_02_add_20;
always @(posedge clk,negedge rst_n) begin
    if(!rst_n)begin
        u_00_power_2<=0;
        u_02_add_20<=0;
    end
    else begin
        u_00_power_2<=u_00*u_00;
        u_02_add_20<=u_02+u_20;
    end
end
/*
reg  [31:0]u_00_shuma;
reg  [31:0]u_02_shuma;
reg  [31:0]u_20_shuma;
reg  [31:0]u_00_power_2_shuma;
always @(posedge clk,negedge rst_n) begin
    if(!rst_n)begin
        u_00_shuma<=0;
        u_02_shuma<=0;
        u_20_shuma<=0;
        u_00_power_2_shuma<=0;
    end
    else if(div_en)begin
        u_00_shuma<=u_00;
        u_02_shuma<=u_02_decimal[79:48];
        u_20_shuma<=u_20_decimal[79:48];
        u_00_power_2_shuma<=u_00_power_2;
    end
end*/
//wire [63:0]n_02_add_20;//作为输出
//wire n_02_add_20_clken;
div_gen_32bit u1_div_gen_32bit(
    .aclk                    (clk),
    .s_axis_divisor_tvalid   (div_en),
    .s_axis_divisor_tdata    (u_00_power_2),
    .s_axis_dividend_tvalid  (div_en),
    .s_axis_dividend_tdata   (u_02_add_20),
    .m_axis_dout_tvalid      (n_02_add_20_clken),//
    .m_axis_dout_tdata       (n_02_add_20)
);

//存储一阶不变矩,一般是小数，一定要放大到足够倍数,保留了三十二位小数，相当于放大了2的36次方了
always @(posedge clk,negedge rst_n) begin
    if (!rst_n) begin
        nochange_martix<=0;
    end
    else if (n_02_add_20_clken) begin
        nochange_martix<=n_02_add_20;//该不变矩在学习时进行保留
    end
end

//学习模式
reg [63:0] gest1;//手势1特征值
reg [63:0] gest2;//手势2特征值
reg [63:0] gest3;
reg [63:0] gest4;
reg [63:0] gest5;
reg [1:0]stata;
parameter  kongxian=2'b00,//空闲状态
           xiaodou=2'b01,
           wait_sf=2'b10,//等待释放
           sf_xd=2'b11;//释放消抖
reg en_xd;//消抖计时使能           
reg count_5ms;//消抖完成标志
reg [23:0] countxd;//5ms计时
reg [3:0] gest_kind;//记录手势种类
reg [63:0]shuma;//用于数码管显示
always @(posedge clk,negedge rst_n)begin
    if (!rst_n) begin
        en_xd<=0;
        gest_kind<=0;
        stata<=2'b00;
        gest1<=0;
        gest2<=0;
        gest3<=0;
        gest4<=0;
        gest5<=0;
        shuma<=0;
        gest_kind<=0;    
    end
    else if(gesture_study) begin//开始学习
        case(stata)
            kongxian:begin
                if(gest_five || gest_one || gest_two ||gest_three||gest_four)begin//为1进入，
                    case(1)
                        gest_one   :begin
                                        gest1<=nochange_martix;
                                        shuma<=nochange_martix;
                                        gest_kind<=1;
                                    end   
                        gest_two   :begin
                                        gest2<=nochange_martix; 
                                        shuma<=nochange_martix;
                                        gest_kind<=2;
                                    end 
                        gest_three :begin
                                        gest3<=nochange_martix;
                                        shuma<=nochange_martix;
                                        gest_kind<=3;
                                    end
                        gest_four  :begin
                                        gest4<=nochange_martix;
                                        shuma<=nochange_martix;
                                        gest_kind<=4;
                                    end
                        gest_five  :begin
                                        gest5<=nochange_martix;
                                        shuma<=nochange_martix;
                                        gest_kind<=5;
                                    end
                    endcase
                    stata<=xiaodou;//进入消抖
                    en_xd<=1;
                end
                else
                    stata<=kongxian;
            end
            xiaodou:begin
                if(count_5ms==1)begin
                    en_xd<=0;
                    stata<=wait_sf;//进入等待释放
                end
                else
                    stata<=xiaodou;
            end 
            wait_sf:begin
                if(gest_five==0 && gest_one==0 && gest_two==0 && gest_three==0 && gest_four==0)begin
                    en_xd<=1;
                    stata<=sf_xd;//进入释放消抖    
                end
                else begin
                    stata<=wait_sf;
                    en_xd<=0;
                end            
            end
            sf_xd:begin
                if(count_5ms)begin
                    en_xd<=0;
                    stata<=kongxian;//进入空闲释放
                end
                else
                    stata<=sf_xd;
            end
        endcase       
    end
end

//多次学习找区间范围
always @(posedge clk,negedge rst_n) begin
  if(!rst_n)begin
    gest1_low <= 0;
    gest1_up  <= 0;
    gest2_low <= 0;
    gest2_up  <= 0;
    gest3_low <= 0;
    gest3_up  <= 0;
    gest4_low <= 0;
    gest4_up  <= 0;
    gest5_low <= 0;
    gest5_up  <= 0;             
  end
  else begin
    gest1_up  <= (gest1_up  < gest1)  ?  gest1:gest1_up;//更新gest_up
    gest1_low <= (gest1_low > gest1)  ?  gest1:gest1_low;//更新gest_low
    gest2_up  <= (gest2_up  < gest2)  ?  gest2:gest2_up;
    gest2_low <= (gest2_low > gest2)  ?  gest2:gest2_low;
    gest3_up  <= (gest3_up  < gest3)  ?  gest3:gest3_up;
    gest3_low <= (gest3_low > gest3)  ?  gest3:gest3_low;
    gest4_up  <= (gest4_up  < gest4)  ?  gest4:gest4_up;
    gest4_low <= (gest4_low > gest4)  ?  gest4:gest4_low;
    gest5_up  <= (gest5_up  < gest5)  ?  gest5:gest5_up;
    gest5_low <= (gest5_low > gest5)  ?  gest5:gest5_low;    
  end
end

//消抖计时，4ms
parameter N_xd=24'd100_000;//fz.10
always@(posedge clk,negedge rst_n)begin
    if(!rst_n)begin
        countxd<=24'b0;
        count_5ms<=1'b0;
    end
    else if(en_xd)begin
         if(countxd<N_xd-1)begin
            countxd<=countxd+1;
            count_5ms<=1'b0;
         end
         else begin
            count_5ms<=1'b1;//标志20ms达到
            countxd<=24'b0;
            end
        end
    else begin
        countxd<=24'b0;
        count_5ms<=1'b0;
        end
end

//数码管显示
reg [6:0]shu0;
reg [6:0]shu1;
reg [6:0]shu2;
reg [6:0]shu3;
reg [6:0]shu4;
reg [6:0]shu5;
reg [6:0]shu6;
reg [6:0]shu7;
//编码，将要显示的值编码为数码管能显示的
always@(*)begin
    case(shuma[27:24])//32位小数，显示高8位
        4'h0:
         shu0=7'b011_1111;
        4'h1:
         shu0=7'b000_0110;
        4'h2:
          shu0=7'b101_1011;
        4'h3:
          shu0=7'b100_1111;         
        4'h4:
          shu0=7'b110_0110;
        4'h5:
          shu0=7'b110_1101;
        4'h6:
          shu0=7'b111_1101;
        4'h7:             
          shu0=7'b000_0111;
        4'h8:
          shu0=7'b111_1111;
        4'h9:
          shu0=7'b110_1111;
        4'ha:
          shu0=7'b111_0111;
        4'hb:  
          shu0=7'b111_1100;           
        4'hc:
          shu0=7'b011_1001;
        4'hd:
          shu0=7'b101_1110;
        4'he:
          shu0=7'b111_1011;
        default:
          shu0=7'b111_0001;             
    endcase
    case(shuma[31:28])
        4'h0:
          shu1=7'b011_1111;
        4'h1:
         shu1=7'b000_0110;
        4'h2:
          shu1=7'b101_1011;
        4'h3:
          shu1=7'b100_1111;         
        4'h4:
          shu1=7'b110_0110;
        4'h5:
          shu1=7'b110_1101;
        4'h6:
          shu1=7'b111_1101;
        4'h7:             
          shu1=7'b000_0111;
        4'h8:
          shu1=7'b111_1111;
        4'h9:
          shu1=7'b110_1111;
        4'ha:
          shu1=7'b111_0111;
        4'hb:  
          shu1=7'b111_1100;           
        4'hc:
          shu1=7'b011_1001;
        4'hd:
          shu1=7'b101_1110;
        4'he:
          shu1=7'b111_1011;
        default:
          shu1=7'b111_0001;             
    endcase
    case(shuma[35:32])
        4'h0:
          shu2=7'b011_1111;
        4'h1:
          shu2=7'b000_0110;
        4'h2:
          shu2=7'b101_1011;
        4'h3:
          shu2=7'b100_1111;         
        4'h4:
          shu2=7'b110_0110;
        4'h5:
          shu2=7'b110_1101;
        4'h6:
          shu2=7'b111_1101;
        4'h7:             
          shu2=7'b000_0111;
        4'h8:
          shu2=7'b111_1111;
        4'h9:
          shu2=7'b110_1111;
        4'ha:
          shu2=7'b111_0111;
        4'hb:  
          shu2=7'b111_1100;           
        4'hc:
          shu2=7'b011_1001;
        4'hd:
          shu2=7'b101_1110;
        4'he:
          shu2=7'b111_1011;
        default:
          shu2=7'b111_0001;             
    endcase
    case(shuma[39:36])
        4'h0:
          shu3=7'b011_1111;
        4'h1:
          shu3=7'b000_0110;
        4'h2:
          shu3=7'b101_1011;
        4'h3:
          shu3=7'b100_1111;         
        4'h4:
          shu3=7'b110_0110;
        4'h5:
          shu3=7'b110_1101;
        4'h6:
          shu3=7'b111_1101;
        4'h7:             
          shu3=7'b000_0111;
        4'h8:
          shu3=7'b111_1111;
        4'h9:
          shu3=7'b110_1111;
        4'ha:
          shu3=7'b111_0111;
        4'hb:  
          shu3=7'b111_1100;           
        4'hc:
          shu3=7'b011_1001;
        4'hd:
          shu3=7'b101_1110;
        4'he:
          shu3=7'b111_1011;
        default:
          shu3=7'b111_0001;             
    endcase
    case(shuma[43:40])
        4'h0:
          shu4=7'b011_1111;
        4'h1:
          shu4=7'b000_0110;
        4'h2:
          shu4=7'b101_1011;
        4'h3:
          shu4=7'b100_1111;         
        4'h4:
          shu4=7'b110_0110;
        4'h5:
          shu4=7'b110_1101;
        4'h6:
          shu4=7'b111_1101;
        4'h7:             
          shu4=7'b000_0111;
        4'h8:
          shu4=7'b111_1111;
        4'h9:
          shu4=7'b110_1111;
        4'ha:
          shu4=7'b111_0111;
        4'hb:  
          shu4=7'b111_1100;           
        4'hc:
          shu4=7'b011_1001;
        4'hd:
          shu4=7'b101_1110;
        4'he:
          shu4=7'b111_1011;
        default:
          shu4=7'b111_0001;             
    endcase
    case(shuma[47:44])
        4'h0:
          shu5=7'b011_1111;
        4'h1:
          shu5=7'b000_0110;
        4'h2:
          shu5=7'b101_1011;
        4'h3:
          shu5=7'b100_1111;         
        4'h4:
          shu5=7'b110_0110;
        4'h5:
          shu5=7'b110_1101;
        4'h6:
          shu5=7'b111_1101;
        4'h7:             
          shu5=7'b000_0111;
        4'h8:
          shu5=7'b111_1111;
        4'h9:
          shu5=7'b110_1111;
        4'ha:
          shu5=7'b111_0111;
        4'hb:  
          shu5=7'b111_1100;           
        4'hc:
          shu5=7'b011_1001;
        4'hd:
          shu5=7'b101_1110;
        4'he:
          shu5=7'b111_1011;
        default:
          shu5=7'b111_0001;             
    endcase
  case(shuma[51:48])
        4'h0:
          shu6=7'b011_1111;
        4'h1:
          shu6=7'b000_0110;
        4'h2:
          shu6=7'b101_1011;
        4'h3:
          shu6=7'b100_1111;         
        4'h4:
          shu6=7'b110_0110;
        4'h5:
          shu6=7'b110_1101;
        4'h6:
          shu6=7'b111_1101;
        4'h7:             
          shu6=7'b000_0111;
        4'h8:
          shu6=7'b111_1111;
        4'h9:
          shu6=7'b110_1111;
        4'ha:
          shu6=7'b111_0111;
        4'hb:  
          shu6=7'b111_1100;           
        4'hc:
          shu6=7'b011_1001;
        4'hd:
          shu6=7'b101_1110;
        4'he:
          shu6=7'b111_1011;
        default:
          shu6=7'b111_0001;             
    endcase
   case(gest_kind)
        4'h0:
          shu7=7'b011_1111;
        4'h1:
          shu7=7'b000_0110;
        4'h2:
          shu7=7'b101_1011;
        4'h3:
          shu7=7'b100_1111;         
        4'h4:
          shu7=7'b110_0110;
        4'h5:
          shu7=7'b110_1101;
        4'h6:
          shu7=7'b111_1101;
        4'h7:             
          shu7=7'b000_0111;
        4'h8:
          shu7=7'b111_1111;
        4'h9:
          shu7=7'b110_1111;
        4'ha:
          shu7=7'b111_0111;
        4'hb:  
          shu7=7'b111_1100;           
        4'hc:
          shu7=7'b011_1001;
        4'hd:
          shu7=7'b101_1110;
        4'he:
          shu7=7'b111_1011;
        default:
          shu7=7'b111_0001;             
    endcase
end

//数码管扫描模块
parameter N=17;//fz.4
reg[N-1:0]regN;//用来确定数码管扫描频率；
always@(*)begin
    case(regN[N-1:N-2])//先定义后使用
       2'b00: begin
           wx=8'b0001_0001;//位选高电平有效,组合逻辑电路，顺序执行，若为阻塞赋值则不对了，要提前片选
           dx=shu0; 
           dx2=shu4;
       end
       2'b01: begin
           wx=8'b0010_0010;//共阴极的
           dx=shu1;
           dx2=shu5;
       end       
       2'b10: begin
           wx=8'b0100_0100;//共阴极的
           dx=shu2;
           dx2=shu6;
       end            
       default: begin
           wx=8'b1000_1000;//共阴极的
           dx=shu3;
           dx2=shu7;
       end       
      endcase
end    
//用来确定扫描频率
always @(posedge clk,negedge rst_n)begin
    if(!rst_n)begin
        regN<=0;
        end
    else
        regN<=regN+1'b1;
 end   


endmodule
