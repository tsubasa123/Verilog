/*module sixteentoonemux(in, sel, out);

	parameter N = 16;

	input [(N-1):0]in;
	input [3:0]sel;

	output wire out;
	wire [1:0]outofmux2;

	genvar i,j;

	generate 
		for (i = 0; i<(N-1); i = i+2)
			begin
				wire [7:0]outofmux;
				twotoonemux mux1 (in[i],in[i+1],sel[0],outofmux[i/2]);
			end
	endgenerate


	generate 
		for (i = 0; i<(N/2-1); i = i+2)
			begin
				wire [3:0] outofmux1;
				twotoonemux mux2 (outofmux[i],outofmux[i+1],sel[1],outofmux1[i/2]);
			end
	endgenerate
			twotoonemux mux3 (outofmux1[0], outofmux1[1], sel[2], outofmux2[0]);
			twotoonemux mux4 (outofmux1[2], outofmux1[3], sel[2], outofmux2[1]);
			twotoonemux mux5 (outofmux2[0], outofmux2[1], sel[3], out);
endmodule*/
module sixteentoonemux(in, sel, out);


  		input [15:0]in;
        input [3:0]sel;

        output wire out;
 		wire [7:0] outofmux;
  		wire [3:0] outofmux1;
 		wire [1:0] outofmux2;

       
  		twotoonemux mux1 (in[0],in[1],sel[0],outofmux[0]);
  		twotoonemux mux2 (in[2],in[3],sel[0],outofmux[1]);
 		twotoonemux mux3 (in[4],in[5],sel[0],outofmux[2]);
 		twotoonemux mux4 (in[6],in[7],sel[0],outofmux[3]);
  		twotoonemux mux5 (in[8],in[9],sel[0],outofmux[4]);
  		twotoonemux mux6 (in[10],in[11],sel[0],outofmux[5]);
  		twotoonemux mux7 (in[12],in[13],sel[0],outofmux[6]);
  		twotoonemux mux8 (in[14],in[15],sel[0],outofmux[7]);
        
  		twotoonemux mux9 (outofmux[0],outofmux[1],sel[1],outofmux1[0]);
 		twotoonemux mux10 (outofmux[2],outofmux[3],sel[1],outofmux1[1]);
  		twotoonemux mux11 (outofmux[4],outofmux[5],sel[1],outofmux1[2]);
  		twotoonemux mux12 (outofmux[6],outofmux[7],sel[1],outofmux1[3]);

 	 	twotoonemux mux13 (outofmux1[0], outofmux1[1], sel[2],outofmux2[0]);
       		twotoonemux mux14 (outofmux1[2], outofmux1[3], sel[2], outofmux2[1]);
                        
  		twotoonemux mux15 (outofmux2[0], outofmux2[1], sel[3], out);
endmodule   
