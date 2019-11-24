`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/08 21:16:25
// Design Name: 
// Module Name: hu_martix_simulation
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


module hu_martix_simulationmodule; 

// hu_martix Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   hcount                               = 0 ;
reg   vcount                               = 0 ;
reg   per_data                             = 0 ;
reg   per_clken                            = 0 ;
reg   gesture_study                        = 0 ;
reg   gest_one                             = 0 ;
reg   gest_two                             = 0 ;
reg   gest_three                           = 0 ;
reg   gest_four                            = 0 ;
reg   gest_five                            = 0 ;

// hu_martix Outputs
wire  [48:0]  gest1                        ;
wire  [48:0]  gest2                        ;
wire  [48:0]  gest3                        ;
wire  [48:0]  gest4                        ;
wire  [48:0]  gest5                        ;
wire  [7:0]   wx                            ;
wire  [6:0]   dx                            ;
wire  [6:0]   dx2                           ;


always #1  clk=~clk;


initial
begin
    rst_n  =  0;
    #1
    rst_n  =  1;
    
end

 u_hu_martix (
    .clk                     ( clk                   ),
    .rst_n                   ( rst_n                 ),
    .hcount                  ( hcount                ),
    .vcount                  ( vcount                ),
    .per_data                ( per_data              ),
    .per_clken               ( per_clken             ),
    .gesture_study           ( gesture_study         ),
    .gest_one                ( gest_one              ),
    .gest_two                ( gest_two              ),
    .gest_three              ( gest_three            ),
    .gest_four               ( gest_four             ),
    .gest_five               ( gest_five             ),

    .gest1                   ( gest1          [48:0] ),
    .gest2                   ( gest2          [48:0] ),
    .gest3                   ( gest3          [48:0] ),
    .gest4                   ( gest4          [48:0] ),
    .gest5                   ( gest5          [48:0] ),
    .wx                      ( wx             [7:0]  ),
    .dx                      ( dx             [6:0]  ),
    .dx2                     ( dx2            [6:0]  )
);

endmodule
