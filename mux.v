module mux(
 input [1:0] Sel,    
 input [3:0] ceo, [3:0] you, [3:0] fred,[3:0] jill, 
 input Enable,
 output [3:0] Y     
);
    
assign Y = (Sel == 2'b00 && Enable) ? ceo : 
            (Sel == 2'b01 && Enable) ? you : 
            (Sel == 2'b10 && Enable) ? fred : jill;  
            
    
endmodule
