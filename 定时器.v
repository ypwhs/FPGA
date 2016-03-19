module test (CLK,OUT);
	input CLK;
	output OUT;
	parameter T_100MS = 5000000;	//50MHz晶振
	reg [31:0]i;
	reg out;
	
	always @(posedge CLK)
		if(i == 0)
			out = !out;
	always @(posedge CLK)
		if(i == T_100MS)
			i = 0;
		else
			i = i + 1;
	

	
	assign OUT = out;
endmodule
