`timescale 1ns/1ps

module IC74HC151_tb();

reg EN_Part;
reg [2:0] SelectPart;
reg	[7:0] Single_Part;

wire	Y;
wire	YF;


IC74HC151 U1
(
	.EN_Part(EN_Part) ,	// input  EN_Part_sig
	.SelectPart(SelectPart) ,	// input [DATA_SelectPart-1:0] SelectPart_sig
	.Single_Part(Single_Part) ,	// input [DATA_Single_Part-1:0] Single_Part_sig
	.Y(Y) ,	// output  Y_sig
	.YF(YF) 	// output  YF_sig
);

defparam U1.DATA_SelectPart = 3;
defparam U1.DATA_Single_Part = 8;

initial begin
	EN_Part = 1;
	EN_Part =0;
	Single_Part =1011_1101;
	SelectPart =3'b011;
end
endmodule


