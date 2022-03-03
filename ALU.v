module adder (A,B,C_in,in1,status);
input [31:0] A;
input [31:0] B;
input C_in;
output reg [31:0] in1;
output reg [3:0] status;
reg C_out;

always @(A or B or C_in) begin
 {C_out, in1} = A + B + C_in;
 status[0] = C_out;
 status[1] = in1[31];
 if (in1 == 32'b0)
	status[2] = 1;
	else
	status[2] = 0;
 status[3] = ((~A[31])&(~B[31])&(in1[31])) | ((A[31])&(B[31])&(~in1[31]));
 end
endmodule 


module xorfunc (in2,A,B);
input [31:0] A;
input [31:0] B;
output [31:0] in2;

assign in2[0] = A[0] ^ B[0];
assign in2[1] = A[1] ^ B[1];
assign in2[2] = A[2] ^ B[2];
assign in2[3] = A[3] ^ B[3];
assign in2[4] = A[4] ^ B[4];
assign in2[5] = A[5] ^ B[5];
assign in2[6] = A[6] ^ B[6];
assign in2[7] = A[7] ^ B[7];
assign in2[8] = A[8] ^ B[8];
assign in2[9] = A[9] ^ B[9];
assign in2[10] = A[10] ^ B[10];
assign in2[11] = A[11] ^ B[11];
assign in2[12] = A[12] ^ B[12];
assign in2[13] = A[13] ^ B[13];
assign in2[14] = A[14] ^ B[14];
assign in2[15] = A[15] ^ B[15];
assign in2[16] = A[16] ^ B[16];
assign in2[17] = A[17] ^ B[17];
assign in2[18] = A[18] ^ B[18];
assign in2[19] = A[19] ^ B[19];
assign in2[20] = A[20] ^ B[20];
assign in2[21] = A[21] ^ B[21];
assign in2[22] = A[22] ^ B[22];
assign in2[23] = A[23] ^ B[23];
assign in2[24] = A[24] ^ B[24];
assign in2[25] = A[25] ^ B[25];
assign in2[26] = A[26] ^ B[26];
assign in2[27] = A[27] ^ B[27];
assign in2[28] = A[28] ^ B[28];
assign in2[29] = A[29] ^ B[29];
assign in2[30] = A[30] ^ B[30];
assign in2[31] = A[31] ^ B[31];

endmodule 


module andfunc (in3,A,B);
input [31:0] A;
input [31:0] B;
output [31:0] in3;

assign in3[0] = A[0] & B[0];
assign in3[1] = A[1] & B[1];
assign in3[2] = A[2] & B[2];
assign in3[3] = A[3] & B[3];
assign in3[4] = A[4] & B[4];
assign in3[5] = A[5] & B[5];
assign in3[6] = A[6] & B[6];
assign in3[7] = A[7] & B[7];
assign in3[8] = A[8] & B[8];
assign in3[9] = A[9] & B[9];
assign in3[10] = A[10] & B[10];
assign in3[11] = A[11] & B[11];
assign in3[12] = A[12] & B[12];
assign in3[13] = A[13] & B[13];
assign in3[14] = A[14] & B[14];
assign in3[15] = A[15] & B[15];
assign in3[16] = A[16] & B[16];
assign in3[17] = A[17] & B[17];
assign in3[18] = A[18] & B[18];
assign in3[19] = A[19] & B[19];
assign in3[20] = A[20] & B[20];
assign in3[21] = A[21] & B[21];
assign in3[22] = A[22] & B[22];
assign in3[23] = A[23] & B[23];
assign in3[24] = A[24] & B[24];
assign in3[25] = A[25] & B[25];
assign in3[26] = A[26] & B[26];
assign in3[27] = A[27] & B[27];
assign in3[28] = A[28] & B[28];
assign in3[29] = A[29] & B[29];
assign in3[30] = A[30] & B[30];
assign in3[31] = A[31] & B[31];

endmodule 


module orfunc (in4,A,B);
input [31:0] A;
input [31:0] B;
output [31:0] in4;

assign in4[0] = A[0] | B[0];
assign in4[1] = A[1] | B[1];
assign in4[2] = A[2] | B[2];
assign in4[3] = A[3] | B[3];
assign in4[4] = A[4] | B[4];
assign in4[5] = A[5] | B[5];
assign in4[6] = A[6] | B[6];
assign in4[7] = A[7] | B[7];
assign in4[8] = A[8] | B[8];
assign in4[9] = A[9] | B[9];
assign in4[10] = A[10] | B[10];
assign in4[11] = A[11] | B[11];
assign in4[12] = A[12] | B[12];
assign in4[13] = A[13] | B[13];
assign in4[14] = A[14] | B[14];
assign in4[15] = A[15] | B[15];
assign in4[16] = A[16] | B[16];
assign in4[17] = A[17] | B[17];
assign in4[18] = A[18] | B[18];
assign in4[19] = A[19] | B[19];
assign in4[20] = A[20] | B[20];
assign in4[21] = A[21] | B[21];
assign in4[22] = A[22] | B[22];
assign in4[23] = A[23] | B[23];
assign in4[24] = A[24] | B[24];
assign in4[25] = A[25] | B[25];
assign in4[26] = A[26] | B[26];
assign in4[27] = A[27] | B[27];
assign in4[28] = A[28] | B[28];
assign in4[29] = A[29] | B[29];
assign in4[30] = A[30] | B[30];
assign in4[31] = A[31] | B[31];

endmodule 


module norfunc (in5,A,B);
input [31:0] A;
input [31:0] B;
output [31:0] in5;

assign in5[0] = ~(A[0] | B[0]);
assign in5[1] = ~(A[1] | B[1]);
assign in5[2] = ~(A[2] | B[2]);
assign in5[3] = ~(A[3] | B[3]);
assign in5[4] = ~(A[4] | B[4]);
assign in5[5] = ~(A[5] | B[5]);
assign in5[6] = ~(A[6] | B[6]);
assign in5[7] = ~(A[7] | B[7]);
assign in5[8] = ~(A[8] | B[8]);
assign in5[9] = ~(A[9] | B[9]);
assign in5[10] = ~(A[10] | B[10]);
assign in5[11] = ~(A[11] | B[11]);
assign in5[12] = ~(A[12] | B[12]);
assign in5[13] = ~(A[13] | B[13]);
assign in5[14] = ~(A[14] | B[14]);
assign in5[15] = ~(A[15] | B[15]);
assign in5[16] = ~(A[16] | B[16]);
assign in5[17] = ~(A[17] | B[17]);
assign in5[18] = ~(A[18] | B[18]);
assign in5[19] = ~(A[19] | B[19]);
assign in5[20] = ~(A[20] | B[20]);
assign in5[21] = ~(A[21] | B[21]);
assign in5[22] = ~(A[22] | B[22]);
assign in5[23] = ~(A[23] | B[23]);
assign in5[24] = ~(A[24] | B[24]);
assign in5[25] = ~(A[25] | B[25]);
assign in5[26] = ~(A[26] | B[26]);
assign in5[27] = ~(A[27] | B[27]);
assign in5[28] = ~(A[28] | B[28]);
assign in5[29] = ~(A[29] | B[29]);
assign in5[30] = ~(A[30] | B[30]);
assign in5[31] = ~(A[31] | B[31]);

endmodule 


module shifter(A,B,in6,in7);
input [31:0] A;
input [31:0] B;
output reg [31:0] in6;
output reg [31:0] in7;

always @(A or B) begin
 in6 = A << B[4:0];
 in7 = A >> B[4:0];
end
endmodule


module Mux (in1,in2,in3,in4,in5,in6,in7,in8,opcode,out);
input [31:0] in1,in2,in3,in4,in5,in6,in7,in8;
input [2:0] opcode;
output reg [31:0] out;

	
always @(in1 or in2 or in3 or in4 or in5 or in6 or in7 or opcode) begin

	
	case(opcode)
	
	 3'b000 : out = in1;
	 3'b001 : out = in2;
	 3'b010 : out = in3;
	 3'b011 : out = in4;
	 3'b100 : out = in5;
	 3'b101 : out = in6;
	 3'b110 : out = in7;
	 3'b111 : out = 4'b0;
	 default out = 4'b0;
	endcase
end
endmodule

module ALU(A,B,C_in,opcode,out,status);
input [31:0] A;
input [31:0] B;
input C_in;
input [2:0] opcode;
output [31:0] out;
output [3:0] status;
wire [31:0] i0, i1, i2, i3, i4, i5, i6, i7;

   adder addf ( A, B, C_in, i0, status );
	xorfunc xorf ( i1, A, B );
	andfunc andf ( i2, A, B );
	orfunc orf ( i3, A, B );
	norfunc norf ( i4, A, B );
	shifter shifterf ( A, B, i5, i6 );
	
	assign i7 = 32'b0;
	Mux Muxf ( i0, i1, i2, i3, i4, i5, i6, i7, opcode, out );

endmodule





