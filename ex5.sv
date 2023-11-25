module ex5(
	input x, y, z,
	output f);
reg Y [7:0];
IC_DECODER_74LS138 dut(
	.E0(1'b0),
	.E1(1'b0),
	.E2(1'b1),
	.A0(x),
	.A1(y),
	.A2(z),
	.Y0(Y[0]),
	.Y1(Y[1]),
	.Y2(Y[2]),
	.Y3(Y[3]),
	.Y4(Y[4]),
	.Y5(Y[5]),
	.Y6(Y[6]),
	.Y7(Y[7]));
assign f = Y[0] & Y[2] & Y[5] & Y[7];
endmodule