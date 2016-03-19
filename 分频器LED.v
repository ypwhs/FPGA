module test (CLK,LED);
	input CLK;
	output [3:0]LED;
	parameter T_100MS = 25000000;	//50MHz¾§Õñ
	reg [25:0]i;
	reg led0,led1,led2,led3;
	assign LED={led3,led2,led1,led0};
	always @(posedge CLK)
		if(i == T_100MS)begin
			led0<=!led0;
			i<=0;
		end else
			i<=i+26'b1;
	always @(posedge led0)
		led1<=!led1;
	always @(posedge led1)
		led2<=!led2;
	always @(posedge led2)
		led3<=!led3;
endmodule
