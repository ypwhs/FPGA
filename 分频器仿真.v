module test (CLK,LED);
	input CLK;
	output [3:0]LED;
	reg led0,led1,led2,led3,clk;
	assign CLK=clk,LED={led3,led2,led1,led0};
	
	//simulate
	initial led0=0;
	initial led1=0;
	initial led2=0;
	initial led3=0;
	initial begin
		clk=0;
		forever #2 clk=!clk;
	end
	always @(posedge CLK)
		led0<=!led0;
	always @(posedge LED[0])
		led1<=!led1;
	always @(posedge LED[1])
		led2<=!led2;
	always @(posedge LED[2])
		led3<=!led3;
endmodule
