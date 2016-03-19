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
	output [7:0]DATA;		//����DATAΪ�����DATA�Ѿ�����Ϊ����ܵİ˸���
	reg [7:0]data;			//Ū��һ����λ�ļĴ���
	reg [7:0]buffer;		//��Ū��һ����λ�ļĴ���
	assign DATA=data;		//�൱�ڽ�data�Ĵ������ӵ�DATA�����
	always @(negedge SHCP or negedge STCP or negedge MR)begin
		if(!MR)begin
			buffer<=8'b11111111;				//MR���
			data<=8'b11111111;
		end
		else if(!STCP)
			data<=buffer;						//�������
		else
			buffer<={DS,buffer[7:1]};	//��λ�Ĵ�
	end
	initial begin		//��ʼ��
		buffer<=8'b11111111;		//�����ȫ��
		data<=8'b11111111;		//�����ȫ��
	end
endmodule
