`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/16 19:14:32
// Design Name: 
// Module Name: RGB_YCBCBR
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

//图像处理模块综合
module Img_Processor(
	input 					clk,//50Mhz
	input 					rst_n,
	input					per_clken,
	input			[15:0]	per_data,//处理前数据
	input                   up,//为1的时候，使得cbcr上限或下限增加,拨码开关
	input                   down,//减少的拨码开关
	input                   cb_up,
	input                   cb_down,
	input                   cr_up,
	input                   cr_down,
	input                   gesture,//点数学习拨码开关
	input                   gest_five,
	input                   count_judge_start,//点数手势判断开始拨码开关
	input                   gesture_study,//hu不变矩学习
	input         [19:0]    one_frame_end,//传入的是hcount和vcount，用来判断一帧图片结尾
	input                   gest_judge,//进行hu不变矩手势判断的拨码开关
	input                   dynamic_judge_start,//进行动态手势判别拨码开关
	output    reg [4:0]     result,//最终的判决结果
	output    reg [7:0]	    wx,
	output    reg [6:0]	    dx,
	output    reg [6:0]     dx2,
	output					post_clken,
	output			[11:0]	post_data,
	input                   choose_picture//选择图片，选择最终处理好的图片，还是最初的图片
    );
    
//---------------------------------------------------
//RGB_YCbCr_Skin_Dection、RGB565转为YCBCR
wire	[7:0]	cmos_R = {per_data[15:11], per_data[15:13]};
wire	[7:0]	cmos_G = {per_data[10:5], per_data[10:9]};
wire	[7:0]	cmos_B = {per_data[4:0], per_data[4:2]};
wire	[7:0]	gray_data;
wire    [7:0]   cb;
wire    [7:0]   cr;
wire 			post_clken_Gray;
RGB_YCBCR u_RGB_YCBCR(
	.clk			(clk),
	.rst_n			(rst_n),
	.per_clken		(per_clken),
	.cmos_R			(cmos_R),
	.cmos_G			(cmos_G),
	.cmos_B			(cmos_B),
	.post_clken		(post_clken_Gray),
	.gray_data		(gray_data),
	.cb(cb),
	.cr(cr)
    );
    
 //肤色提取
wire [15:0]per_data_fs={cb,cr};
wire per_clken_fs=post_clken_Gray;
wire post_data_fs;                      
wire post__clken_fs;         
wire [7:0]wx_fs;
wire [6:0]dx_fs;
wire [6:0]dx2_fs;
fuse u_fuse(
	.clk			(clk),
	.rst_n			(rst_n),
	.per_data		(per_data_fs),
	.per_clken		(per_clken_fs),
	.up(up),
	.down(down),
	.cb_up(cb_up),
	.cb_down(cb_down),
	.cr_up(cr_up),
	.cr_down(cr_down),
	.wx(wx_fs),
	.dx(dx_fs),
	.dx2(dx2_fs),
	.post_data	    (post_data_fs),
	.post_clken		(post__clken_fs)
    );

//两次腐蚀
wire 			per_bit_Erosion = post_data_fs;
wire 			per_clken_Erosion = post__clken_fs;
wire 			post_bit_Erosion;
wire 			post_clken_Erosion;
Erosion Erosion_inst(
	.clk				(clk),
	.rst_n				(rst_n),
	.per_clken			(per_clken_Erosion),
	.per_img_bit		(per_bit_Erosion),
	.post_clken			(post_clken_Erosion),
	.post_img_bit		(post_bit_Erosion)
    );
//第二次腐蚀
wire 			per_bit_Erosion2 = post_bit_Erosion;
wire 			per_clken_Erosion2 = post_clken_Erosion;
wire 			post_bit_Erosion2;
wire 			post_clken_Erosion2;
Erosion Erosion_inst2(
	.clk				(clk),
	.rst_n				(rst_n),
	.per_clken			(per_clken_Erosion2),
	.per_img_bit		(per_bit_Erosion2),
	.post_clken			(post_clken_Erosion2),
	.post_img_bit		(post_bit_Erosion2)
    );

//两次膨胀
wire per_data_dil=post_bit_Erosion2;
wire per_clken_dil=post_clken_Erosion2;
wire post_data_dil;
wire post_clken_dil;
dilation  u_dilation (
    .clk                     ( clk            ),
    .rst_n                   ( rst_n          ),
    .per_clken               ( per_clken_dil  ),
    .per_img_bit             ( per_data_dil   ),
    .post_clken              ( post_clken_dil  ),
    .post_img_bit            ( post_data_dil   )
);

//第二次膨胀
wire per_data_dil2=post_data_dil;
wire per_clken_dil2=post_clken_dil;
wire post_data_dil2;
wire post_clken_dil2;
dilation  u_dilation2 (
    .clk                     ( clk            ),
    .rst_n                   ( rst_n          ),
    .per_clken               ( per_clken_dil2  ),
    .per_img_bit             ( per_data_dil2   ),
    .post_clken              ( post_clken_dil2  ),
    .post_img_bit            ( post_data_dil2   )
);



wire [7:0]wx_count;
wire [6:0]dx_count;
wire [6:0]dx2_count;
wire gest_one=cb_up;
wire gest_two=cr_down;
wire gest_three=cb_down;
wire gest_four=cr_up;
wire [16:0]count1_reduce;
/*wire [16:0]count1_plus;
wire [16:0]count2_plus;
wire [16:0]count3_plus;
wire [16:0]count4_plus;*/
wire [16:0]count;//实时手势点数
wire[16:0]   count1_low;
wire[16:0]   count1_up;  
wire[16:0]   count2_low; 
wire[16:0]   count2_up;  
wire[16:0]   count3_low; 
wire[16:0]   count3_up;  
wire[16:0]   count4_low; 
wire[16:0]   count4_up;    
wire[16:0]   count5_low; 
wire[16:0]   count5_up; 
count_study u_count_study(  .clk(clk),//手势学习（面积学习）
							.rst_n(rst_n),
							.per_data(post_data_dil2),
							.per_clken(post_clken_dil2),
							.one_frame_end(one_frame_end),
							.gesture(gesture),
							.gest_five(gest_five),
							.gest_one(gest_one),
							.gest_two(gest_two),
							.gest_three(gest_three),
							.gest_four(gest_four),
							.wx(wx_count),
							.dx(dx_count),
							.dx2(dx2_count),
							.count_now(count),
                    	    .count1_low(count1_low), 
                    	    .count1_up(count1_up),  
                    	    .count2_low(count2_low), 
                    	    .count2_up(count2_up),  
                    	    .count3_low(count3_low), 
                    	    .count3_up(count3_up),  
                    	    .count4_low(count4_low), 
                    	    .count4_up(count4_up),    
                    	    .count5_low(count5_low), 
                    	    .count5_up(count5_up) 					   
						   );

//判断手势
wire [4:0]judge;
gesture_judge  u_gesture_judge (
    .clk                     ( clk                   ),
    .rst_n                   ( rst_n                 ),
    .judge_start             ( count_judge_start     ),
    .count                   ( count          		 ),
	.count1_low 			 (count1_low             ), 
	.count1_up  			 (count1_up              ),  
	.count2_low 			 (count2_low             ), 
	.count2_up  			 (count2_up              ),  
	.count3_low  			 (count3_low             ), 
	.count3_up   			 (count3_up              ),  
	.count4_low  			 (count4_low             ), 
	.count4_up   			 (count4_up              ),    
	.count5_low  			 (count5_low             ), 
	.count5_up   			 (count5_up              ), 

    .judge                   ( judge          		 )
);

  
//--------------------------------------------------------------
//Mean_Filer???????????????????????8???????????????????????888??????????????8???????????????????????????????????????????????????????????????
/*wire	[7:0]	per_data_Mean = gray_data;//??????????????????????????
wire 			per_clken_Mean = post_clken_Gray;//??????????????????????????????????????????????????????????????????????????????????????
wire 			post_clken_Mean;
wire	[7:0]	post_data_Mean;

Mean_Filter u_Mean_Filer(
	.clk			(clk),
	.rst_n			(rst_n),
	.per_img_Y		(per_data_Mean),
	.per_clken		(per_clken_Mean),
	.post_img_Y		(post_data_Mean),
	.post_clken		(post_clken_Mean)
    );*/
	
//Sobel_Edge_Detect
wire 	[7:0]	per_data_Sobel ={8{post_data_dil2}};
wire 			per_clken_Sobel = post_clken_dil2;
wire 	[10:0]	sobel_threshold = 400;//sobel_threshold
wire 			post_bit_Sobel;
wire 			post_clken_Sobel;
//--------------------------------------------------------------
//Sobel_Edge_Detect
Sobel_Edge_Detect Sobel_Edge_Detect_inst(
	.clk				(clk),
	.rst_n				(rst_n),
	.per_img_Y			(per_data_Sobel),
	.per_clken			(per_clken_Sobel),
	.sobel_threshold	(sobel_threshold),
	.post_img_bit		(post_bit_Sobel),
	.post_clken			(post_clken_Sobel)
    );

 //手势学习，hu不变矩
wire per_clken_hu=post_clken_Sobel;
wire per_data_hu=post_bit_Sobel;
wire [7:0]wx_hu;
wire [6:0]dx_hu;
wire [6:0]dx2_hu;
wire [63:0]gest1_up;//手势1的上限，学习获得
wire [63:0]gest1_low;//下限
wire [63:0]gest2_up;
wire [63:0]gest2_low;
wire [63:0]gest3_up;
wire [63:0]gest3_low;
wire [63:0]gest4_up;
wire [63:0]gest4_low;
wire [63:0]gest5_up;
wire [63:0]gest5_low;
wire [63:0]nochange_martix;//传回的实时手势特征值
wire [63:0]n_02_add_20;//不变矩,两个都是不变矩，上面的迟了一个时钟
wire       n_02_add_20_clken;//不变矩时钟

wire [23:0]focus_x;//传回来的矩心，用来作为动态手势
wire [23:0]focus_y;
hu_martix   u_hu_martix (
    .clk                     ( clk                   ),
    .rst_n                   ( rst_n                 ),
    .hcount                  ( one_frame_end[9:0]    ),
    .vcount                  ( one_frame_end[19:10]  ),
    .per_data                ( per_data_hu           ),
    .per_clken               ( per_clken_hu          ),
    .gesture_study           ( gesture_study         ),
    .gest_one                ( gest_one              ),//按下该案件进行手势1学习
    .gest_two                ( gest_two              ),
    .gest_three              ( gest_three            ),
    .gest_four               ( gest_four             ),
    .gest_five               ( gest_five             ),

    .gest1_up                ( gest1_up       		 ),
    .gest1_low               ( gest1_low      		 ),
    .gest2_up                ( gest2_up       		 ),
    .gest2_low               ( gest2_low      		 ),
    .gest3_up                ( gest3_up       		 ),
    .gest3_low               ( gest3_low      		 ),
    .gest4_up                ( gest4_up       		 ),
	.gest4_low               ( gest4_low             ),
	.gest5_up                ( gest5_up              ),
	.gest5_low               ( gest5_low             ),
	.nochange_martix         (nochange_martix        ),
	.n_02_add_20			 (n_02_add_20			 ),
	.n_02_add_20_clken		 (n_02_add_20_clken		 ),
    .wx                      ( wx_hu             	 ),
    .dx                      ( dx_hu            	 ),
    .dx2                     ( dx2_hu          		 ),
	.focus_x                 (focus_x                ),
	.focus_y                 (focus_y                )
);

//基于hu不变矩的手势判断
wire [63:0]gest=nochange_martix;
wire       gest_clken=n_02_add_20_clken;
wire [4:0]gest_result;
hu_judge  u_hu_judge (
    .clk                     ( clk                 ),
    .rst_n                   ( rst_n               ),
    .gest_judge              ( gest_judge          ),
    .gest                    ( gest                ),
	.gest_clken              (gest_clken           ),
    .gest1_up                ( gest1_up     	   ),
    .gest1_low               ( gest1_low    	   ),
    .gest2_up                ( gest2_up     	   ),
    .gest2_low               ( gest2_low    	   ),
    .gest3_up                ( gest3_up     	   ),
    .gest3_low               ( gest3_low    	   ),
    .gest4_up                ( gest4_up     	   ),
    .gest4_low               ( gest4_low    	   ),
    .gest5_up                ( gest5_up     	   ),
    .gest5_low               ( gest5_low    	   ),

    .gest_result             ( gest_result  	   )
);

//动态手势判决
wire [3:0]dynamic_judge;
dynamic_gest_judge  u_dynamic_gest_judge (
    .clk                     ( clk                        ),
    .rst_n                   ( rst_n                      ),
    .focus_x                 ( focus_x                    ),
    .focus_y                 ( focus_y                    ),
    .dynamic_judge_start     ( dynamic_judge_start        ),

    .dynamic_judge           ( dynamic_judge              )
);
//手势判决结果接收(是点数判决还是hu不变矩判决)
always @(posedge clk,negedge rst_n) begin
	if(!rst_n)begin
		result<=4'b0000;
	end
	else if (count_judge_start) begin
		result<=judge;
	end
	else if (gest_judge) begin
		result<=gest_result;
	end
	else if(dynamic_judge_start)
		result<=dynamic_judge;
end

always @(*) begin//拨码开关控制数据接收
	if (up||down) begin//肤色学习体现
		wx=wx_fs;
		dx=dx_fs;
		dx2=dx2_fs;	
	end
	else if(gesture)begin//点数学习
		wx=wx_count;
		dx=dx_count;
		dx2=dx2_count;
	end	
	else if (gesture_study) begin//hu不变矩学习
		wx=wx_hu;
		dx=dx_hu;
		dx2=dx2_hu;
	end
	else  
		wx=0;
end  

//assign 	post_data 	= 	{gray_data[7:4], gray_data[7:4], gray_data[7:4]};;//Gray
//assign  post_clken=post_clken_Gray;
//assign 	post_data 	= 	{post_data_Mean[7:3], post_data_Mean[7:2], post_data_Mean[7:3]};//???????????????????????????????????????
//assign	post_clken	=	post_clken_Sobel;//????????????????????????????????????????????????    
//assign 	post_data 	= ~{12{post_bit_Sobel}};	
//assign      post_data   =~{12{post_data_fs}};
//assign      post_clken  =post__clken_fs;
//assign      post_data   =  ~{12{post_data_dil2}};
//assign      post_clken  =  post_clken_dil2;
//assign 	post_data 	= 	{post_data_Mean[7:4], post_data_Mean[7:4], post_data_Mean[7:4]};//Gray??????????????????????????????????????????????GB444?????????????????????????????????????????????
//assign	post_clken	=	post_clken_Mean;
assign 	post_data 	=(choose_picture==1) ? ~{12{post_bit_Sobel}}:{per_data[15:12],per_data[10:7],per_data[4:1]};
assign	post_clken	=(choose_picture==1) ? post_clken_Sobel:per_clken;
endmodule