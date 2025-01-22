module tb_register_4bit ;

reg clk,clr,ce ; 
reg [3:0] d; 
wire [3:0] q; 

register_4bit uut (.clk(clk),.clr(clr),.d(d),.q(q),.ce(ce)) ; 

initial    
    begin 
        clk = 0 ; 
        forever #5 clk = ~clk ; 
    end 

initial 
    begin 
        clr = 0 ;
        ce = 0 ;
        d = 4'b1011 ; 
        #8 ; 
        ce = 1 ; 
        d = 4'b1000 ; 
        #10 ;
        d = 4'b0001 ; 
        #10 ; 
        clr = 1; 
        #10 ; 
        clr = 0 ; 
        d = 4'b1111; 
        #10 ; 
        $finish ; 
    end 

endmodule      