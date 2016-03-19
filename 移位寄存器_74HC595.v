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
	input A0,A1;	//����A0,A1Ϊ���룬A0�ǰ�ť��A1Ҳ�ǰ�ť
	output [7:0]DATA;		//����DATAΪ�����DATA�Ѿ�����Ϊ����ܵİ˸���
	reg [7:0]data;			//Ū��һ����λ�ļĴ���
	assign DATA=data;		//�൱�ڽ��Ĵ������ӵ�DATA�����
	always @(negedge A0)	//����ťA0����ʱ
		data<={A1,data[7:1]};	//{A1,data[7:1]}�ȼ���data<<1+A1
	initial		//��ʼ��
		data<=8'b11111111;		//data���Ϊȫ1�������ȫ��
endmodule
