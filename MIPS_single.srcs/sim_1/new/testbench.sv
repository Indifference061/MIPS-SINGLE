`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/27 10:39:46
// Design Name: 
// Module Name: testbench
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


//module testbench( );
//    logic clk;
//    logic reset;
//    logic [31:0] writedata,dataadr;
//    logic memwrite;
    
//    top dut(clk,reset,writedata,dataadr,memwrite);
    
//    initial
//        begin
//            reset<=1;
//            #22; reset<=0;
//        end
     
//     always
//        begin
//            clk<=1;
//            #5;clk<=0;#5;
//        end
        
//     always @(negedge clk)
//        begin
//            if(memwrite) begin
//                if(dataadr===84&writedata===7)
//                begin
//                    $display("Simulation succeeded");
//                    $stop;
//                end 
//                else if(dataadr!==80)begin
//                    $display("Simulation failed");
//                    $stop;
//                end
//             end
//         end
//endmodule
module testbench();
    logic clk;
    logic BTNC,BTNL,BTNR;
    logic [15:0]SW;
    logic [7:0] AN;
    logic [6:0]A2G;
    
    top test(clk,BTNC,BTNL,BTNR,SW,AN,A2G);
    initial
    begin
        BTNC<=1;
        #10;
        BTNC<=0;
        #10;
        BTNL<=1;
        #10;
        BTNL<=0;
        #10;
        SW<=16'b0001_0010_0100_0011;
        BTNR<=1;
        BTNL<=1;
     end
        
     always begin
        clk<=1;
        #5;
        clk<=0;
        #5;
     end

endmodule
