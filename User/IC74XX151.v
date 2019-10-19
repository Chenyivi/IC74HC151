module IC74XX151(
	EN_Part,
	SelectPart,
	Single_Part,
	Y,
	YF
);

input EN_Part;
input 

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


endmodule


