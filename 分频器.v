module test (CLOCK,LED0,LED1,LED2,LED3);
	input CLOCK;
	output LED0;
	reg rLED0;
	always @(*)
		if(!(A|B))
			rLED0 = 1;
		else
			rLED0 = 0;
	assign LED0 = rLED0;
endmodule