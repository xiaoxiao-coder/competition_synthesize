`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/02 17:40:23
// Design Name: 
// Module Name: tb_count_study
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


module tb_count_study;   

// count_study Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 1 ;
reg   per_data                             = 0 ;
reg   per_clken                            = 0 ;
reg   gesture                              = 0 ;
reg   gest_zero                            = 0 ;
reg   gest_one                             = 0 ;
reg   gest_two                             = 0 ;
reg   gest_three                           = 0 ;
reg   gest_four                            = 0 ;

// count_study Outputs
wire  [7:0]  wx                            ;
wire  [6:0]  dx                            ;
wire  [6:0]  dx2                           ;


always #1 clk=~clk;


initial
begin
    rst_n  =  1;
    #2 
    rst_n=0;
    #2 
    rst_n=1;
    gesture=1;//开始学习
    #10 
    per_data=1;
    per_clken=1;
    #50
    per_data=0;
    #10
    per_clken=0;
    #10
    gest_four=1;
    #100
    gest_four=0;
end

 count_study u_count_study (
    .clk                     ( clk               ),
    .rst_n                   ( rst_n             ),
    .per_data                ( per_data          ),
    .per_clken               ( per_clken         ),
    .gesture                 ( gesture           ),
    .gest_zero               ( gest_zero         ),
    .gest_one                ( gest_one          ),
    .gest_two                ( gest_two          ),
    .gest_three              ( gest_three        ),
    .gest_four               ( gest_four         ),

    .wx                      ( wx          [7:0] ),
    .dx                      ( dx          [6:0] ),
    .dx2                     ( dx2         [6:0] )
);
endmodule
