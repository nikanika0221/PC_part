`timescale 1ns / 1ps

module pc_module(
		input clk,
		input sel,
		input[7:0] jump_to,
		output[7:0] R15_value,
		output reg[7:0] PC_out
    );
	
	wire[7:0] mux_out;
	

	always @(posedge clk) begin
		PC_out <= mux_out;
	end

	assign mux_out = sel ? jump_to : PC_out+1; 
	assign R15_value = PC_out+2;
	
endmodule
