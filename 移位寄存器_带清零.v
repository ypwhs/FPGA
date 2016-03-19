module test (KEY,DATA,SELECT);
	input [3:0]KEY;
	output [7:0]DATA;
	output [5:0]SELECT;
	reg [5:0]select;
	assign SELECT=select;
	initial
		select=6'b111110;
	_74HC595 U1
	(
		.MR(KEY[0]),
		.SHCP(KEY[1]),
		.DS(KEY[2]),
		.STCP(KEY[3]),
		.DATA(DATA)
	);
endmodule

module _74HC595 (DS,SHCP,STCP,MR,DATA);
	input DS,SHCP,STCP,MR;
	output [7:0]DATA;		//定义DATA为输出，DATA已经配置为数码管的八个脚
	reg [7:0]data;			//弄了一个八位的寄存器
	reg [7:0]buffer;		//又弄了一个八位的寄存器
	assign DATA=data;		//相当于将data寄存器连接到DATA输出口
	always @(negedge SHCP or negedge STCP or negedge MR)begin
		if(!MR)begin
			buffer<=8'b11111111;				//MR清空
			data<=8'b11111111;
		end
		else if(!STCP)
			data<=buffer;						//输出数据
		else
			buffer<={DS,buffer[7:1]};	//移位寄存
	end
	initial begin		//初始化
		buffer<=8'b11111111;		//数码管全灭
		data<=8'b11111111;		//数码管全灭
	end
endmodule
