
module tb;

	// Inputs
	reg clk;
	reg sel;
	reg [7:0] jump_to;

	// Outputs
	wire [7:0] R15_value;
	wire [7:0] PC_out;

	// Instantiate the Unit Under Test (UUT)
	pc_module uut (
		.clk(clk), 
		.sel(sel), 
		.jump_to(jump_to), 
		.R15_value(R15_value), 
		.PC_out(PC_out)
	);
	always #5 clk <= !clk;
	always #50 sel <= !sel;
	always #50 jump_to <= jump_to + 5;
	initial begin
		// Initialize Inputs
		clk = 0;
		sel =0;
		jump_to = 0;
	end 
endmodule

