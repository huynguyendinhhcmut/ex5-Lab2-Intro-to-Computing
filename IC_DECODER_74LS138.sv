module IC_DECODER_74LS138(
	input A0, A1, A2, E0, E1, E2,
	output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
logic [5:0] temp;
reg [7:0]Y;
assign temp = {A0, A1, A2, E0, E1, E2};
always_comb begin: process_74LS138
case (temp)
	6'b001000:Y = 8'b11111110;
	6'b001001:Y = 8'b11111101;
	6'b001010:Y = 8'b11111011;
	6'b001011:Y = 8'b11110111;
	6'b001100:Y = 8'b11101111;
	6'b001101:Y = 8'b11011111;
	6'b001110:Y = 8'b10111111;
	6'b001111:Y = 8'b01111111;
	default: Y = 8'b11111111;
endcase
Y0 = Y[0];
Y1 = Y[1];
Y2 = Y[2];
Y3 = Y[3];
Y4 = Y[4];
Y5 = Y[5];
Y6 = Y[6];
Y7 = Y[7];
end
endmodule
