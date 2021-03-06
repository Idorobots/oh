module oh_mux8(/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   in0, in1, in2, in3, in4, in5, in6, in7, sel0, sel1, sel2, sel3,
   sel4, sel5, sel6, sel7
   );

   parameter DW=99;
   

   //data inputs
   input [DW-1:0]  in0;
   input [DW-1:0]  in1;
   input [DW-1:0]  in2;
   input [DW-1:0]  in3;
   input [DW-1:0]  in4;
   input [DW-1:0]  in5;
   input [DW-1:0]  in6;
   input [DW-1:0]  in7;
   
   //select inputs
   input 	   sel0;
   input 	   sel1;
   input 	   sel2;
   input 	   sel3;
   input 	   sel4;
   input 	   sel5;
   input 	   sel6;
   input 	   sel7;


   output [DW-1:0] out;
   
  
   assign out[DW-1:0] = ({(DW){sel0}} & in0[DW-1:0] |
			 {(DW){sel1}} & in1[DW-1:0] |
			 {(DW){sel2}} & in2[DW-1:0] |
			 {(DW){sel3}} & in3[DW-1:0] |
			 {(DW){sel4}} & in4[DW-1:0] |
			 {(DW){sel5}} & in5[DW-1:0] |
			 {(DW){sel6}} & in6[DW-1:0] |
			 {(DW){sel7}} & in7[DW-1:0]);
   
   
endmodule // oh_mux8

