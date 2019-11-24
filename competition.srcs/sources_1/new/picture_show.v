`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/06 09:18:18
// Design Name: 
// Module Name: picture_show
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


module picture_show(  
	input 			clock, //系统输入时钟 100MHz
	input 			rst,
	output [11:0]	disp_RGB, //VGA 数据输出
	output 			hsync, //VGA 行同步信号
	output 			vsync, //VGA 场同步信号
//摄像头模块
    input  [7:0]	OV7725_D,
    input 			OV7725_HREF,
    input 			OV7725_PCLK,
    output 			OV7725_SIOC,
    inout 			OV7725_SIOD,
    input 			OV7725_VSYNC,
    output 			OV7725_XCLK,

	output [7:0]	wx,//位选
	output [6:0]	dx,//段选
	output [6:0]	dx2,//第二组数码管段选
	input       	up,//按键
	input  			down,
	input 			cb_up,
	input 			cb_down,
	input 			cr_up,
	input 			cr_down,
	input 			gesture,//点数学习拨码开关
	input 			count_judge_start,//点数手势判断开始
	input 			gest_five,
	input 			gesture_study,//hu不变矩进行手势学习拨码开关
	input 			gest_judge,//hu不变矩进行手势判断拨码开关
	input           dynamic_judge_start,//进行动态手势判别拨码开关
	output  [4:0]	result,
	input           choose_picture//VGA显示选择
	);
	wire [15:0]data;
	reg [9:0] hcount; //VGA 行扫描计数器
	reg [9:0] vcount; //VGA 场扫描计数器
	reg [11:0] h_dat;
	reg [11:0] v_dat;
	reg [11:0] x_dat;
	reg flag;
	wire hcount_ov;
	wire vcount_ov;
	wire dat_act;
	reg vga_clk=0;
	reg cnt_clk=0;//分频计数
	
	wire [11:0]distant_x;
    wire [11:0]distant_y;
	//VGA 行、场扫描时序参数表
	parameter 
        hsync_end = 10'd95,
        hdat_begin = 10'd143,
        hdat_end = 10'd783,
        hpixel_end = 10'd799,//结尾
        vsync_end = 10'd1,
        vdat_begin = 10'd34,
        vdat_end = 10'd514,
        vline_end = 10'd524;

	always @(posedge clock) begin
	    if(!rst)begin
	        vga_clk<=0;
	        cnt_clk<=0;
	    end
		else if(cnt_clk == 1) begin
			vga_clk <= ~vga_clk;
			cnt_clk <= 0;
		end
		else
			cnt_clk <= cnt_clk +1;
	end

//************************VGA 驱动部分*******************************//行扫描
	always @(posedge vga_clk) begin
	    if(!rst)
	        hcount<=0;
		else if (hcount_ov)
			hcount <= 10'd0;
		else
			hcount <= hcount + 10'd1;
	end
	assign hcount_ov = (hcount == hpixel_end);

	//场扫描
	always @(posedge vga_clk) begin
	    if(!rst)
	        vcount<=0;
		else if (hcount_ov) begin
			if (vcount_ov)
				vcount <= 10'd0;
			else
				vcount <= vcount + 10'd1;
		end
	end
	assign vcount_ov = (vcount == vline_end);

	//数据、同步信号输
	assign dat_act = ((hcount >= hdat_begin) && (hcount < hdat_end))
				&& ((vcount >= vdat_begin) && (vcount < vdat_end));
	assign hsync = (hcount > hsync_end);
	assign vsync = (vcount > vsync_end);
	assign disp_RGB = (dat_act) ? data : 12'h00;
    
    reg [11:0]picture_data;//接受读取到的数据
    

//rom图片显示
wire [15:0]vga_rom_data;//读取rom中数据
reg [20:0]vga_rom_addr=0;//rom地址，15位，看IP核


parameter picture_x=50,
           picture_y=50,//图片显示位置
           picture_long=320,
           picture_high=240;//图片大小.

reg picture_en;//赋值使能
always @(posedge vga_clk) begin
    if(!rst)
        picture_en<=0;
    else if((hcount>hdat_begin+picture_x+2)&&(hcount<=hdat_begin+picture_x+picture_long+2)&&(vcount>vdat_begin+picture_y)&&(vcount<=vdat_begin+picture_y+picture_high))
        picture_en<=1;//由于存在两级流水线，延迟2个时钟
    else
        picture_en<=0;
end

//地址变化
always @(posedge vga_clk) begin//调用该ip，其中有两级流水线，所以延迟了两个时钟出数据，所以最初出来的两个数据是错的
   if(!rst)
        vga_rom_addr<=0;
   else if((hcount==hdat_begin+picture_x+1)&&(vcount==vdat_begin+picture_y+1))
        vga_rom_addr<=15'd0;
   else if((hcount>hdat_begin+picture_x)&&(hcount<=hdat_begin+picture_x+picture_long)&&(vcount>vdat_begin+picture_y)&&(vcount<=vdat_begin+picture_y+picture_high)) 
        vga_rom_addr<=vga_rom_addr+15'd1;
   else
        vga_rom_addr<=vga_rom_addr;
end

//rom的ip核例化
/*vga_rom rom(
    .clka(vga_clk),
    .addra(vga_rom_addr),//输入地址
    .douta(vga_rom_data)//输出数据
);*/
//提取摄像头数据
wire [15:0]ov7725_data;
ov7725  u_ov7725 (
    .OV7725_D                ( OV7725_D      	    ),
    .OV7725_HREF             ( OV7725_HREF          ),
    .OV7725_PCLK             ( OV7725_PCLK          ),
    .OV7725_VSYNC            ( OV7725_VSYNC         ),
    .clk_in1                 ( vga_clk              ),
    .rst                     ( ~rst                 ),//内部复位是与此处反的

    .OV7725_SIOC             ( OV7725_SIOC          ),
    .OV7725_XCLK             ( OV7725_XCLK          ),
    .OV7725_SIOD             ( OV7725_SIOD          ),

    .ov7725_data             ( ov7725_data   	    ),
	.vga_rom_addr 			 ( vga_rom_addr         )
);

wire [11:0]ov7725_data_444={ov7725_data[15:12],ov7725_data[10:7],ov7725_data[4:1]};

//图像处理操作
wire data_en;
wire [11:0]post_data;
Img_Processor u_Img_Processor(//图像处理过程模块
	.clk(vga_clk),
    .rst_n(rst),
	.per_clken(picture_en),//表示有效数据标志
	.per_data(ov7725_data),
	.post_clken(data_en),//此信号代表流水线就绪了，相当于流水线处理延时了几个时钟
	.post_data(post_data),
	.wx(wx),
	.dx(dx),
	.dx2(dx2),
	.up(up),
	.down(down),
	.cb_up(cb_up),
	.cb_down(cb_down),
	.cr_up(cr_up),
	.cr_down(cr_down),
	.gesture(gesture),//点数学习拨码开关
	.count_judge_start(count_judge_start),//点数手势判断开始
	.gest_five(gest_five),
	.gesture_study(gesture_study),//hu不变矩学习拨码开关
	.gest_judge(gest_judge),//hu不变矩进行手势判断拨码开关
	.dynamic_judge_start(dynamic_judge_start),//动态手势判别开始拨码开关
	.one_frame_end({vcount,hcount}),
	.result(result),//手势判断得到的结果
	.choose_picture(choose_picture)//VGA显示选择
    );

//最终输出的图片
assign data=(data_en==1)?post_data:12'h000;//图片
 

endmodule

