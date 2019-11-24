`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/31 23:18:03
// Design Name: 
// Module Name: fuse
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

//图像分割，肤色提取。学习功能
module fuse(input 				clk,//25Mhz
	input 					        rst_n,
	input					          per_clken,
	input			[15:0]	      per_data,//cbcr
	input                   up,//代表上升
	input                   down,//代表下降
	input                   cb_up,//学习调节功能，考虑到不同的人不同肤色
	input                   cb_down,//调节cb的下界
	input                   cr_up,
	input                   cr_down,		
	output					        post_clken,
	output			     	      post_data,//一位，要不1，要不0
	output  reg [7:0]       wx,//位选信号
	output  reg [6:0]       dx,//段选信号
	output  reg [6:0]       dx2//段选信号2
	);
reg [7:0]cb_high;//cb上限	
reg [7:0]cb_low;	
reg [7:0]cr_high;//cr上限
reg [7:0]cr_low;//cr下限

reg data;
always @(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        data<=0;    
    end
    else if (per_clken) begin
          if (per_data[15:8]>cb_low && per_data[15:8]<cb_high && per_data[7:0]>cr_low && per_data[7:0]<cr_high)begin
              data<=1;//1代表黑色，0是白色，所以最后处理翻转一下         
          end
          else begin
             data<=0;
          end
    end
end
assign post_data=data;

//一级流水线，使能时钟对应延迟一个
reg post_clken_fs;
always @(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        post_clken_fs<=0;
    end
    else
        post_clken_fs<=per_clken;
end
assign post_clken=post_clken_fs;

reg [1:0]stata;
parameter  kongxian=2'b00,//空闲状态
           xiaodou=2'b01,
           wait_sf=2'b10,//等待释放
           sf_xd=2'b11;//释放消抖
reg en_xd;//消抖计时使能           
reg count_5ms;//消抖完成标志
reg [23:0] countxd;//5ms计时
always @(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        stata<=0;
        en_xd<=0;
        cb_low<=8'h4d;//77
        cb_high<=8'h7f;//127
        cr_low<=8'h85;//133 
        cr_high<=8'had;//173    
    end
    else if(up)begin//拨码开关
        case(stata)
            kongxian:begin
                if(cb_up || cb_down || cr_up ||cr_down)begin//为1进入，
                    case(1)
                        cb_up   : cb_high<=cb_high+1;
                        cb_down : cb_low<= cb_low+1;   
                        cr_up   : cr_high<= cr_high+1;  
                         cr_down: cr_low<=cr_low+1;
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
                if(cb_up==0 && cb_down==0 && cr_up==0 && cr_down==0)begin
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
    else if(down)begin
        case(stata)
            kongxian:begin
                if(cb_up || cb_down || cr_up ||cr_down)begin//为1进入，
                    case(1)
                        cb_up: cb_high<=cb_high-1;
                        cb_down: cb_low<= cb_low-1;   
                        cr_up: cr_high<= cr_high-1;  
                        cr_down: cr_low<=cr_low-1;
                    endcase                
                    stata<=xiaodou;//进入消抖
                    en_xd<=1;
                end
            end
            xiaodou:begin
                if(count_5ms)begin
                    en_xd<=0;
                    stata<=wait_sf;//进入等待释放
                end
                else
                    stata<=xiaodou;
            end 
            wait_sf:begin
                if(cb_up==0 && cb_down==0 && cr_up==0 && cr_down==0)begin
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
                    stata<=kongxian;//进入空闲状态
                end
                else
                    stata<=sf_xd;
            end
        endcase   
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
    case(cr_high[3:0])
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
    case(cr_high[7:4])
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
    case(cr_low[3:0])
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
    case(cr_low[7:4])
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
    case(cb_high[3:0])
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
    case(cb_high[7:4])
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
    case(cb_low[3:0])
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
    case(cb_low[7:4])
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
