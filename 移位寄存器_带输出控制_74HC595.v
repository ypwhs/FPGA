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
	input A0,A1,A2;	//����A0,A1,A2Ϊ���룬���Ƕ��ǰ�ť
	output [7:0]DATA;		//����DATAΪ�����DATA�Ѿ�����Ϊ����ܵİ˸���
	reg [7:0]data;			//Ū��һ����λ�ļĴ���
	reg [7:0]buffer;		//��Ū��һ����λ�ļĴ���
	assign DATA=data;		//�൱�ڽ��Ĵ������ӵ�DATA�����
	always @(negedge A0)	//����ťA0�ɿ�ʱ
		buffer<={A1,buffer[7:1]};	//{A1,buffer[7:1]}�ȼ���buffer<<1+A1����λ
	always @(negedge A2)	//����ťA2����ʱ
		data<=buffer;		//buffer�е��������
	initial begin		//��ʼ��
		buffer<=8'b11111111;		//�����ȫ��
		data<=8'b11111111;		//�����ȫ��
	end
endmodule
