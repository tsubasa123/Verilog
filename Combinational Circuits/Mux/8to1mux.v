module eighttoonemux(in, sel , out);

input [7:0]in;
input [2:0]sel;

output out;

wire [3:0]outofmux;
wire [1:0]outofmux1;

	twotoonemux mux1(in[0], in[1], sel[0], outofmux[0]);
	twotoonemux mux2(in[2], in[3], sel[0], outofmux[1]);
	twotoonemux mux3(in[4], in[5], sel[0], outofmux[2]);
	twotoonemux mux4(in[6], in[7], sel[0], outofmux[3]);

	twotoonemux mux5(outofmux[0], outofmux[1], sel[1], outofmux1[0]);
	twotoonemux mux6(outofmux[2], outofmux[3], sel[1], outofmux1[1]);

	twotoonemux mux7(outofmux1[0], outofmux1[1], sel[2], out);
endmodule
