`timescale 1ns / 10ps
module booth(out, in1, in2);

parameter width = 6;

input  	[width-1:0] in1;   //multiplicand
input  	[width-1:0] in2;   //multiplier
output  [2*width-1:0] out; //product

reg [2*width:0]P[0:2*width];
reg [2*width-1:0] out; //product

integer i ;

always@ (in1 or in2)
begin

P[0] = {6'b0,in2,1'b0};

	for (i= 0; i<width; i=i+1)
	begin
		case({P[2*i][1:0]})
			2'b01: P[2*i+1] = {P[2*i][12:7]+in1,P[2*i][6:0]};
			2'b10: P[2*i+1] = {P[2*i][12:7]-in1,P[2*i][6:0]};
			default: P[2*i+1] = P[2*i];
		endcase
		P[2*i+2] ={P[2*i+1][2*width], P[2*i+1][2*width:1]};
	end

out = P[2*width][2*width:1];
end

endmodule
