module test (CLK,TIME,LED);
	input CLK;
	output TIME;
	output [3:0]LED;
	wire TIME,LED0,LED1,LED2,LED3;
	assign LED={LED3,LED2,LED1,LED0};
	second U1
	(
		.CLK(CLK),
		.TIME(TIME)
	);
	
	led U2
	(
	   .TIME(TIME),
		.LED0(LED0),
		.LED1(LED1),
		.LED2(LED2),
		.LED3(LED3)
	);
	
	
endmodule

module second(CLK,TIME);
	input CLK;
	output TIME;
	parameter T_500MS = 12500000;	//50MHz¾§Õñ
	reg tm;
	reg [25:0]i;
	always @(posedge CLK)
		if(i==T_500MS)begin
			i<=0;
			tm<=!tm;
		end
		else
			i<=i+26'b1;
			
	assign TIME=tm;
endmodule

module led (TIME,LED0,LED1,LED2,LED3);
	input TIME;
	output LED0,LED1,LED2,LED3;
	reg led0,led1,led2,led3;
	always @(posedge TIME)
		led0<=!led0;
	always @(posedge LED0)
		led1<=!led1;
	always @(posedge LED1)
		led2<=!led2;
	always @(posedge LED2)
		led3<=!led3;
	assign LED0=led0,LED1=led1,LED2=led2,LED3=led3;
endmodule
