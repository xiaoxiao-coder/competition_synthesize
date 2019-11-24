`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/08 14:27:05
// Design Name: 
// Module Name: ov7725_configure
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

//���üĴ�������������ͷ��һЩ��������������iic��һ�δ������ֽڣ�һ������д��һ������Ĵ�����ַ��һ��Ϊ���ݣ��ض����ݴ����ض�����
module ov7725_configure(
input clk,//100k��iicʱ�ӣ���ppl����
input rst,
input config_done,//����һ���Ĵ�������ź�
output	reg	[15:0]	LUT_DATA,//����Ĵ�����ַ+���ݹ�16λ
output [7:0] Slave_Addr,//�����һ���ֽ�д��24��λ֮���Բ���һ������Ϊov7725��д�����ǹ̶�0x42
output reg config_trigger,//���ô����ź�
output reg init_done//��������ź�
);
assign Slave_Addr = 8'h42;//����д

reg [3:0]reg_config_cnt=0;//�Ĵ����Ѿ����úõĸ������˴�����ֻ�������ĸ�������ʮ�����������ֲᣩ
parameter all_count=4;

reg [7:0]delay_1ms;//100ʱ�ﵽ1ms
parameter delay_top=99;
always@(posedge clk,negedge rst)begin//�ϵ���ʱ�����������һ���Ĵ�����ʱ1ms
    if(!rst)
        delay_1ms<=0;
    else if(reg_config_cnt==1 && config_done==1)//�������һ���Ĵ�������һ���Ĵ����󣬸üĴ�������Ϊ��λ���ܣ�Ҳ��Ҫ��ʱ����1ms�ȴ��ȶ�
        delay_1ms<=0;
    else if(delay_1ms<delay_top)
        delay_1ms<=delay_1ms+1;//�ﵽ99��Ͳ����ˣ���ʱ˵����λ���
end

//���úüĴ����ݼ�
always@(posedge clk,negedge rst)begin
    if(!rst)
        reg_config_cnt<=0;
    else if(config_trigger)  //���ô���ʱ��ʼ�Լӣ����ô����ź���Ϊ�˷�ֹ�ظ�����
        reg_config_cnt<=reg_config_cnt+1; 
end

//���ô����ź�
always@(posedge clk,negedge rst)begin
    if(!rst)
        config_trigger<=0;
    else if(delay_1ms==(delay_top-1))//ע����98������99�������֪��
        config_trigger<=1;//��������
    else if(config_done==1 && (reg_config_cnt !=1) && (reg_config_cnt<all_count))//�ڳ��˵�һ���Ĵ�����Ҫ��ʱ1ms�������Ŀ�ֱ�ӽ������á���������ĸ���Ͳ���Ҫ������
        config_trigger<=1;//config_down�϶���ֻά��һ��ʱ�ӡ�
    else 
        config_trigger<=0;//����ʱ�̶��ǲ�����   
end

//��������ź�
always@(posedge clk,negedge rst)begin
    if(!rst)begin
         init_done<=0;
       end  
    else if(reg_config_cnt==all_count-1) //����3ʱ�����������ĸ��� 
        init_done<=1;//������ɡ�
end
		
//��������
always@(posedge clk,negedge rst)
begin
    if(!rst)begin
          LUT_DATA<=0;
        end
    else begin
        case(reg_config_cnt)
            //����λ��Ҫ����ʱ1ms��ſ��Լ�������
            0 :LUT_DATA <= 16'h1280; //��ַ0x12������0x80������λ���мĴ���
            1 :LUT_DATA <= 16'h0cd0; //����ͼ�������ʽ   
            2 :LUT_DATA <= 16'h1100; //�����ڲ�ʱ��
            3 :LUT_DATA <= 16'h1246; //����qvgaģʽ
            default :	LUT_DATA<=0;
            endcase
         end
end

endmodule    
    
