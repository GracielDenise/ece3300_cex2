`timescale 1ns / 1ps
//
//  Add code inside the adder4 module to implement a four-bit adder, using
//   four instances of the one-bit full adder module "fulladd".
//
//  The github tests will test the output of your code.
//  If it passes, you will see a green check mark at the top of the repository.
//

module adder4(
	      input [3:0]      a,
	      input [3:0]      b,
	      output [4:0] result);
   
// add your code here -- you must use four instances of the full adder "fulladd", defined below
   	//MY CODE :D
	wire cout0, cout1, cout2, cout; //3 internal wires
		//LSB
	fulladd fa0(a[0], b[0], cin, sum[0], cout0);
	//add 1
	fulladd fa1(a[1], b[1], cout0, sum[1], cout1);
	//add 2
	fulladd fa2(a[2], b[2], cout1, sum[2], cout2);
	//add 3
	fulladd fa3(a[3], b[3], cout2, sum[3], cout);
endmodule

module fulladd(
	       input  x,
	       input  y,
	       input  cin,
	       output sum,
	       output cout);

   assign sum = x ^ y ^ cin;
   assign cout = (x & y) | (x & cin) | (y & cin);
   
endmodule

