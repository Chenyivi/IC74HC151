module IC74HC151(
	EN_Part,
	SelectPart,
	Single_Part,
	Y,
	YF
);

parameter     DATA_SelectPart   = 3;			  	 //Select output signal width
parameter     DATA_Single_Part   = 8;			  	 //Input signal width

input         EN_Part;								 //Enable
input [DATA_SelectPart-1 :0]	SelectPart;			 //Select output
input [DATA_Single_Part-1 :0]	Single_Part;		 //Input signal

output Y,YF;

reg			   Y;

always@(*)begin 								//Logic selection signal output
	if(EN_Part) begin
		Y <= 1'b0;
		end 
	else begin
		case(SelectPart)
			3'b000:	Y = Single_Part[0];
			3'b001:	Y = Single_Part[1];
			3'b010:	Y = Single_Part[2];
			3'b011:	Y = Single_Part[3];
			3'b100:	Y = Single_Part[4];
			3'b101:	Y = Single_Part[5];
			3'b110:	Y = Single_Part[6];
			3'b111:	Y = Single_Part[7];
		default:	Y = 1'b0;
	endcase
		
	end
end

assign YF= ~Y;								 //Inverted output

endmodule
