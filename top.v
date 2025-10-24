module top(
    
    input [15:0] sw,     
    input  btnL, btnU, btnR, btnD, btnC,
    output [15:0] led         
);

    wire [3:0] ceo = sw[3:0];
    wire [3:0] you = sw[7:4];
    wire [3:0] fred = sw[11:8];
    wire [3:0] jill = sw[15:12];
    
    wire [1:0] Sel;
    wire [1:0] Sel_DeMux;
    
    assign Sel = {btnU, btnL};
    assign Sel_DeMux = {btnR, btnD}; 
    wire Enable = btnC; 
    
    wire [3:0] In; 
    
    mux MUX1(
    .ceo(ceo),
    .you(you),
    .fred(fred),
    .jill(jill),
    .Sel(Sel),
    .Enable(Enable),
    .Y(In)
    );
    
    demux DEMUX1(
    .In(In),
    .Sel_DeMux(Sel_DeMux),
    .Enable(Enable),
    .local_lib(led[3:0]),
    .fire_department(led[7:4]),
    .school(led[11:8]),
    .rib_shack(led[15:12])
    );
    
  
    
endmodule



