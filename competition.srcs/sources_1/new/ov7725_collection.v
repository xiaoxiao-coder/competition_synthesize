`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/08 14:50:32
// Design Name: 
// Module Name: ov7725_collection
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

module ov7725_collection(
input rst,
input pclk,//ʱ�ӣ��൱��vga��ʱ�ӡ�����ʱ�ӣ�һ��ʱ�Ӵ���һ�����ݣ�����rgb16λ����Ҫ��������ʱ�Ӳ��ܴ���һ������
input vsync,//֡ͬ���ź�
input href,//��ͬ���ź�
input[7:0] d,//�ɼ���ͼƬ����
output H_out,//���ͼ��ͬ���ź�
output V_out,//��ͬ���ź�
output [15:0] dout,//���ͼ������
output dout_en//������Чʹ���ź�
    );

//�ڼĴ����ȶ������ú�Ҫ��ʮ֡ͼ����ٲɼ����ȴ����ȶ�
reg [3:0]vsync_cnt;//���ڼ���ʮ֡
//��׽֡ͬ���ź�
reg vsync_d0;
reg vsync_d1;//�ɼ���vsync�����ź�
reg href_d0;
reg href_d1;//�ɼ���href�����ź�
always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        vsync_d0<=0;
        vsync_d1<=0;
        href_d0<=0;
        href_d1<=0;       
        end
    else begin
        vsync_d0<=vsync;
        vsync_d1<=vsync_d0;
        href_d0<=href;
        href_d1<=href_d0;//��������ֵ   
        end
end

wire vsync_start_flag;
assign vsync_start_flag=(~vsync_d1)&(vsync_d0);//��ʱ��ͼ����Ϊ1ʱ��ʼ

always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        vsync_cnt<=0;
        end
    else if(vsync_start_flag==1 && vsync_cnt<10)
        vsync_cnt<=vsync_cnt+1;//�ﵽʮ�Ͳ��ñ���
end
//���˴���õ�ʮ֡��־��ֻҪ��ʮ֮֡ǰʹ��ʱ�򲻴������ɡ�������ʮһ֡��ʼ��
reg real_start_flag;
always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        real_start_flag<=0;
        end
    else if(vsync_start_flag==1 && vsync_cnt==10)
        real_start_flag<=1;//��ʱ��־������ʼ�ɼ��ռ������ˡ�
end

//���ݲɼ���������λ�������rgb565��
reg byte_flag=0;//rgb565��־
reg [7:0]data_indirect;
reg [15:0]rgb_data;
always@(posedge pclk,posedge rst)begin
    if(!rst)begin
        rgb_data<=0;
        data_indirect<=0;
        byte_flag<=0;
        end
    else if(href) begin//��ʱ��ͼ��֪
        data_indirect<=d;//��ʱ�洢
        byte_flag<=~byte_flag;      
        if(byte_flag)//ƴ����//��������ֵ��������c���Բ�һ������һ��byte_flag������Ϊ0��
            rgb_data<={data_indirect,d};//ע���������ֵ�����Դ˴���data_indirect��δ�����ǡ�    
        end
    else begin
        rgb_data<=0;//������
        data_indirect<=0;
        byte_flag<=0;  //��ʱ���ݷ���Ч��  
        end       
end

//������ʼ
assign H_out=real_start_flag ? vsync_d1:0;//֮�����г��ź���������ʱ�ӵģ���Ϊ�ϳɵ�����ЧʱҲ���ˣ����ʼǷ�����
assign V_out=real_start_flag ? href_d1:0;
assign dout=real_start_flag ? rgb_data:0;
assign dout_en=real_start_flag? byte_flag:0;

endmodule
