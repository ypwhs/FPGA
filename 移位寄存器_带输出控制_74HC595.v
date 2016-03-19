module test (A0,A1,A2,DATA,SELECT);
	input A0,A1,A2;
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
		.A2(A2),
		.DATA(DATA)
	);
endmodule

module _74HC595 (A0,A1,A2,DATA);
	input A0,A1,A2;	//定义A0,A1,A2为输入，他们都是按钮
	output [7:0]DATA;		//定义DATA为输出，DATA已经配置为数码管的八个脚
	reg [7:0]data;			//弄了一个八位的寄存器
	reg [7:0]buffer;		//又弄了一个八位的寄存器
	assign DATA=data;		//相当于将寄存器连接到DATA输出口
	always @(negedge A0)	//当按钮A0松开时
		buffer<={A1,buffer[7:1]};	//{A1,buffer[7:1]}等价于buffer<<1+A1，移位
	always @(negedge A2)	//当按钮A2按下时
		data<=buffer;		//buffer中的数据输出
	initial begin		//初始化
		buffer<=8'b11111111;		//数码管全灭
		data<=8'b11111111;		//数码管全灭
	end
endmodule
