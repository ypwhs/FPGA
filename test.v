module test (EN,A0,A1,A2,DATA,SELECT);
	input EN,A0,A1,A2;
	output [7:0]DATA;
	output [5:0]SELECT;
	wire A0,A1,A2,EN;
	wire [7:0]DATA;
	wire [5:0]SELECT;
	reg [5:0]select;
	assign SELECT=select;
	initial
		select=6'b000000;
	_74HC138 U1
	(
		.EN(EN),
	   .A0(A0),
		.A1(A1),
		.A2(A2),
		.DATA(DATA)
	);
	
endmodule

module _74HC138 (EN,A0,A1,A2,DATA);
	input EN,A0,A1,A2;
	output [7:0]DATA;
	wire A0,A1,A2,EN;
	nand	(DATA[0], EN,  A0,	 A1,	 A2	),
			(DATA[1], EN, !A0,	 A1,	 A2	),
			(DATA[2], EN,  A0,	!A1,	 A2	),
			(DATA[3], EN, !A0,	!A1,	 A2	),
			(DATA[4], EN,  A0,	 A1,	!A2	),
			(DATA[5], EN, !A0,	 A1,	!A2	),
			(DATA[6], EN,  A0,	!A1,	!A2	),
			(DATA[7], EN, !A0,	!A1,	!A2	);
endmodule
