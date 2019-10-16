module IC74HC151(
	E  		,
	din		,
	Y		,
	YF
);

parameter     			DATA_IN   =   8;			//输入信号位宽

input               	E  		;
input [DATA_IN-1 :0]	din	    ;

reg    					   Y	;

reg   [Num:0]      		signal1;                //中间信号定义
wire  [Num:0]			signal1;				//中间信号定义

always@(*)begin 								//组合逻辑写法
	if(E) begin
		Y= 1'b0;
		end 
	else begin
		case()
	
	
	end
		
end


assign  signal = signal[DATA_STOP:DATA_STAR];
assign YF= ~Y;

endmodule
