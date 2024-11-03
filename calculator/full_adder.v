module full_adder (a,b,cin,cout,sum) ;

input a,b,cin ; 
output sum,cout ; 
wire sum,cout ; 

assign sum = a ^ b ^ c ; 
assign cout = ((a^b) & cin) | (a & b) ; 

endmodule ; 