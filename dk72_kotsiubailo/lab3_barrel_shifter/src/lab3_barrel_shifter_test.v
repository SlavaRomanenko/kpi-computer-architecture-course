
// Generated by Quartus II 64-Bit Version 13.0 (Build Build 232 06/12/2013)
// Created on Tue Oct  8 22:20:26 2019

`timescale 1ns/1ps

module lab3_barrel_shifter_test;

reg [2:0] bs_opsel_sig;
reg [4:0] shift_amount_sig;
reg [31:0] in_data_sig;
wire [31:0] o_result_sig;
integer i = 0;


lab3_barrel_shifter lab3_barrel_shifter_inst
(
	.bs_opsel(bs_opsel_sig) ,	// input [2:0] bs_opsel_sig
	.shift_amount(shift_amount_sig) ,	// input [4:0] shift_amount_sig
	.in_data(in_data_sig) ,	// input [31:0] in_data_sig
	.o_result(o_result_sig) 	// output [31:0] o_result_sig
);


initial 
begin
in_data_sig = 32'hbadbadba;
shift_amount_sig = 0 ;
#5 shift_amount_sig = 5'b0101;
bs_opsel_sig = 0;
	for(i=0;i<=6;i=i+1)
	begin

	#5 bs_opsel_sig = i;
 
	end

end

initial
begin

 #500 $stop();

end

endmodule

