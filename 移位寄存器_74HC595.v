module test (A0,A1,DATA,SELECT);
	input A0,A1;
	output [7:0]DATA;
	output [5:0]SELECT;
	reg [5:0]select;
	assign SELECT=select;
	initial
		select=6'b111110;
	_74HC595 U1
	(
	   .A0(A0),
		.A1(A1),
		.DATA(DATA)
	);
endmodule

module _74HC595 (A0,A1,DATA);
	input A0,A1;	//定义A0,A1为输入，A0是按钮，A1也是按钮
	output [7:0]DATA;		//定义DATA为输出，DATA已经配置为数码管的八个脚
	reg [7:0]data;			//弄了一个八位的寄存器
	assign DATA=data;		//相当于将寄存器连接到DATA输出口
	always @(negedge A0)	//当按钮A0按下时
		data<={A1,data[7:1]};	//{A1,data[7:1]}等价于data<<1+A1
	initial		//初始化
		data<=8'b11111111;		//data输出为全1，数码管全灭
endmodule
