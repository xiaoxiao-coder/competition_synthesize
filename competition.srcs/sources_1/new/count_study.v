`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/02 13:47:53
// Design Name: 
// Module Name: count_study
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

//手势学习，初步的面积学习
module count_study( input  clk,
                    input  rst_n,
                    input  per_data,
                    input  per_clken,
                    input  gesture,//该拨码开关为1的时候，代表进行手势学习
                    //input  gest_zero,//手势0按键，因为按键复用，所以加入了上面gesture//手势0是为了作为最低界限
                    input  gest_one,//学习手势1
                    input  gest_two,//手势2
                    input  gest_three,//手势3
                    input  gest_four,//手势4
                    input  gest_five,//手势5
                    input [19:0]one_frame_end,
                    output reg [7:0]wx,//位选
                    output reg [6:0]dx,//段选
                    output reg [6:0]dx2,//段选二

                    output reg     [16:0] count_now,//此刻检测到的手势
                    /*output reg     [16:0] count1_reduce,//手势校准界限
                    output reg     [16:0] count1_plus,
                    output reg     [16:0] count2_plus,
                    output reg     [16:0] count3_plus,
                    output reg     [16:0] count4_plus*/
                    output reg[16:0]   count1_low, 
                    output reg[16:0]   count1_up,  
                    output reg[16:0]   count2_low, 
                    output reg[16:0]   count2_up,  
                    output reg[16:0]   count3_low, 
                    output reg[16:0]   count3_up,  
                    output reg[16:0]   count4_low, 
                    output reg[16:0]   count4_up,    
                    output reg[16:0]   count5_low, 
                    output reg[16:0]   count5_up  
                   );

reg [16:0]gest0_count;
reg [16:0]gest1_count;
reg [16:0]gest2_count;
reg [16:0]gest3_count;
reg [16:0]gest4_count;
reg [16:0]gest5_count;
reg [16:0]count;
always @(posedge clk,negedge rst_n)begin
    if(!rst_n)begin
        count<=0;
    end
    else if (per_clken) begin
            if (per_data==1) begin//记下手势数据
                count<=count+1;//计数
            end
            else  
                count<=count;
    end
    else if(one_frame_end[19:10]==500 && one_frame_end[9:0]==700)//一帧结束计数清零
        count<=0;
end 

reg [16:0]one_frame_count;//存储每一帧的点数
always @(posedge clk,negedge rst_n) begin
    if (!rst_n) begin
        one_frame_count<=0;
    end 
    else if(one_frame_end[19:10]==500 && one_frame_end[9:0]==700)begin
        one_frame_count<=count;
    end  
    else
        one_frame_count<=one_frame_count;  
end

reg [1:0]stata;
parameter  kongxian=2'b00,//空闲状态
           xiaodou=2'b01,
           wait_sf=2'b10,//等待释放
           sf_xd=2'b11;//释放消抖
reg en_xd;//消抖计时使能           
reg count_5ms;//消抖完成标志
reg [23:0] countxd;//5ms计时
reg [3:0] gest_kind;//记录手势种类
reg [16:0]shuma;//用于数码管显示
always @(posedge clk,negedge rst_n)begin
    if (!rst_n) begin
        en_xd<=0;
        gest_kind<=0;
        stata<=2'b00;
        gest0_count<=0;
        gest1_count<=0;
        gest2_count<=0;
        gest3_count<=0;
        gest4_count<=0;
        gest5_count<=0;    
    end
    else if(gesture) begin//开始学习
        case(stata)
            kongxian:begin
                if(gest_five || gest_one || gest_two ||gest_three||gest_four)begin//为1进入，
                    case(1)
                        /*gest_zero  :begin 
                                        gest0_count<=one_frame_count;
                                        shuma<=one_frame_count;
                                        gest_kind<=0;
                                    end*/
                        gest_one   :begin
                                        gest1_count<=one_frame_count;
                                        shuma<=one_frame_count;
                                        gest_kind<=1;
                                    end   
                        gest_two   :begin
                                        gest2_count<=one_frame_count; 
                                        shuma<=one_frame_count;
                                        gest_kind<=2;
                                    end 
                        gest_three :begin
                                        gest3_count<=one_frame_count;
                                        shuma<=one_frame_count;
                                        gest_kind<=3;
                                    end
                        gest_four  :begin
                                        gest4_count<=one_frame_count;
                                        shuma<=one_frame_count;
                                        gest_kind<=4;
                                    end
                        gest_five  :begin
                                        gest5_count<=one_frame_count;
                                        shuma<=one_frame_count;
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

//确定点数手势识别的上下限
/*always @(posedge clk,negedge rst_n) begin
    if (!rst_n) begin
        count_now<=0;
        count1_reduce<=0;
        count1_plus<=0;
        count2_plus<=0;
        count3_plus<=0;
        count4_plus<=0;
    end
    else begin
        count_now<=one_frame_count;
        count1_reduce<=gest0_count;
        count1_plus<=(gest1_count+gest2_count)>>1;
        count2_plus<=(gest2_count+gest3_count)>>1;
        count3_plus<=(gest3_count+gest4_count)>>1;
        count4_plus<=gest4_count+1000;
    end
end*/

//多次学习找区间范围
always @(posedge clk,negedge rst_n) begin
  if(!rst_n)begin
    count_now  <= 0;//实时手势数据
    count1_low <= 0;
    count1_up  <= 0;
    count2_low <= 0;
    count2_up  <= 0;
    count3_low <= 0;
    count3_up  <= 0;
    count4_low <= 0;
    count4_up  <= 0;   
    count5_low <= 0;
    count5_up  <= 0;             
  end
  else begin
    count_now  <= one_frame_count;
    count1_up  <= (count1_up  < gest1_count)  ?  gest1_count:count1_up;//更新gest_up
    count1_low <= (count1_low > gest1_count)  ?  gest1_count:count1_low;//更新gest_low
    count2_up  <= (count2_up  < gest2_count)  ?  gest2_count:count2_up;
    count2_low <= (count2_low > gest2_count)  ?  gest2_count:count2_low;
    count3_up  <= (count3_up  < gest3_count)  ?  gest3_count:count3_up;
    count3_low <= (count3_low > gest3_count)  ?  gest3_count:count3_low;
    count4_up  <= (count4_up  < gest4_count)  ?  gest4_count:count4_up;
    count4_low <= (count4_low > gest4_count)  ?  gest4_count:count4_low;
    count5_up  <= (count5_up  < gest5_count)  ?  gest5_count:count5_up;
    count5_low <= (count5_low > gest5_count)  ?  gest5_count:count5_low;    
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
reg [6:0]shu7;
//编码，将要显示的值编码为数码管能显示的
always@(*)begin
    case(shuma[3:0])
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
    case(shuma[7:4])
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
    case(shuma[11:8])
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
    case(shuma[15:12])
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
    case(shuma[16:16])
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
           dx2=7'b011_1111;
       end       
       2'b10: begin
           wx=8'b0100_0100;//共阴极的
           dx=shu2;
           dx2=7'b011_1111;
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
