`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/09 10:28:26
// Design Name: 
// Module Name: iic_ctrl
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


module iic_ctrl(
    input clk,
    input rst,
    input [23:0]iic_configure_data,//���÷��͵�24λ����
    output iic_sclk
     );
     
    //��λ�Ĵ�������Ҫ���в�����1ms����ʱ
    reg [16:0]delay_cnt=0;//1ms����
    wire delay_en;//1msʹ��
    parameter delay_top=10_0000;//1ms
    always@(posedge clk,negedge rst)begin
        if(!rst)
            delay_cnt<=0;
        else if(delay_cnt<delay_top-1)
            delay_cnt<=delay_cnt+1;
        else
            delay_cnt<=delay_cnt;
        end
     assign delay_en=(delay_cnt==delay_top)?1'b1:1'b0;//1��ʹ��
     
     
     //����iicʱ��sclk������400k��������100k
     parameter clk_system=100_000000,//100M
                clk_iic=100_000;//100K
     reg [11:0]clk_cnt;//��Ƶ100k
     reg iic_ctr_clk;//iicʱ��
     reg iic_transport_en=0;//����ʹ�ܣ��͵�ƽʱ�ɸı����ݴ���
     reg iic_capture_en=0;//����ʹ�ܣ��ߵ�ƽʱ���ݲ���ɶ�ȡ
     always@(posedge clk,negedge rst)begin
        if(!rst)begin
          clk_cnt<=0;
          iic_ctr_clk<=0;
          iic_transport_en<=0;
          iic_capture_en<=0;        
          end
        else if(delay_en)begin//1msʹ��
             if(clk_cnt<(clk_system/clk_iic-1'b1))begin
                clk_cnt<=clk_cnt+1;
                end
             else begin
                clk_cnt<=0;  
                end
             iic_ctr_clk<=((clk_cnt>=(clk_system/clk_iic/4+1'b1)) && (clk_cnt<(3*clk_system/clk_iic/4+1'b1)))?1:0;//iic��ʱ���ź�100k
             iic_transport_en<=(clk_cnt==16'b0) ? 1:0;    //����ʹ��  
             iic_capture_en<=(clk_cnt==clk_system/clk_iic/2-1'b1)?1:0;//����ʹ��
          end
         else begin
             clk_cnt<=0;
             iic_ctr_clk<=0;
             iic_transport_en<=0;
             iic_capture_en<=0;        
          end   
      end
      
//������̣�״̬������

      
      

endmodule
