`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/10 17:46:59
// Design Name: 
// Module Name: hu_judge
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


module hu_judge(input               clk,
                input               rst_n,
                input               gest_judge,//进行手势判断拨码开关
                input  [63:0]       gest,//传入的实时手势不变矩
                input               gest_clken,
                input  [63:0]       gest1_up,//手势1学习得到的上限
                input  [63:0]       gest1_low,//下限
                input  [63:0]       gest2_up,
                input  [63:0]       gest2_low,
                input  [63:0]       gest3_up,
                input  [63:0]       gest3_low,
                input  [63:0]       gest4_up,
                input  [63:0]       gest4_low,
                input  [63:0]       gest5_up,
                input  [63:0]       gest5_low,                  
                output reg [4:0]    gest_result//学习得到的结果
                    );

/*always @(posedge clk,negedge rst_n) begin
    if(!rst_n)begin
       gest_result<=5'b00000; 
    end
    else if(gest_judge)
        if (gest>=gest1_low && gest<=gest1_up) begin
            gest_result<=5'b00001;
        end
        else if (gest>=gest2_low && gest<=gest2_up) begin
            gest_result<=5'b00010; 
        end
        else if (gest>=gest3_low && gest<=gest3_up) begin
            gest_result<=5'b00100;
        end
        else if (gest>=gest4_low && gest<=gest4_up) begin
            gest_result<=5'b01000;
        end
        else if (gest>=gest5_low && gest<=gest5_up) begin
            gest_result<=5'b10000;
        end
        else 
            gest_result<=5'b01111;//此时无识别手势
end*/

//谁先达到20个计数(1s也就判断了2到3次)
reg [4:0]count1;
reg [4:0]count2;
reg [4:0]count3;
reg [4:0]count4;
reg [4:0]count5;
reg [4:0]count6;//用来判断是否有手势
always @(posedge clk,negedge rst_n) begin
    if (!rst_n) begin
        count1<=0;
        count2<=0;
        count3<=0;
        count4<=0;
        count5<=0;
        gest_result<=5'b00000;
    end
    else if (count1==20 || count2==20 || count3==20 || count4==20 || count5==20 ||count6==20) begin
        case (20)
            count1  :begin
                gest_result<=5'b00001;
                count1<=0;
                count2<=0;
                count3<=0;
                count4<=0;
                count5<=0;
                count6<=0;
            end 
            count2  :begin
                gest_result<=5'b00010;
                count1<=0;
                count2<=0;
                count3<=0;
                count4<=0;
                count5<=0;
                count6<=0;                
            end
            count3  : begin
                gest_result<=5'b00100;
                count1<=0;
                count2<=0;
                count3<=0;
                count4<=0;
                count5<=0;
                count6<=0;                
            end
            count4  : begin
                gest_result<=5'b01000;
                count1<=0;
                count2<=0;
                count3<=0;
                count4<=0;
                count5<=0;
                count6<=0;                
            end
            count5  : begin
                gest_result<=5'b10000;
                count1<=0;
                count2<=0;
                count3<=0;
                count4<=0;
                count5<=0;
                count6<=0;                
            end
            default :begin//达到20，说明无手势
                gest_result<=5'b00000;
                count1<=0;
                count2<=0;
                count3<=0;
                count4<=0;
                count5<=0;
                count6<=0;                 
            end
        endcase
    end
    else if (gest_clken && gest_judge) begin//一个不变矩来临，用n_02_add_20,nochange_martix慢了一个时钟，所以传n_02_add_20过来
            if (gest>=gest1_low && gest<=gest1_up) begin
                count1<=count1+1;
            end
            else if (gest>=gest2_low && gest<=gest2_up) begin
                count2<=count2+1;
            end
            else if (gest>=gest3_low && gest<=gest3_up) begin
                count3<=count3+1;
            end
            else if (gest>=gest4_low && gest<=gest4_up) begin
                count4<=count4+1;
            end
            else if (gest>=gest5_low && gest<=gest5_up) begin
                count5<=count5+1;
            end

            if (gest>=gest1_low && gest<=gest1_up) begin
                count6<=0;
            end
            else if (gest>=gest2_low && gest<=gest2_up) begin
                count6<=0; 
            end
            else if (gest>=gest3_low && gest<=gest3_up) begin
                count6<=0;
            end
            else if (gest>=gest4_low && gest<=gest4_up) begin
                count6<=0;
            end
            else if (gest>=gest5_low && gest<=gest5_up) begin
                count6<=0;
            end
            else 
                count6<=count6+1;//此时无识别手势        
    end
end

endmodule
