module ClkDivider (
    input clk,
    output reg clk_div
    );
     
 localparam constantNumber = 50000;   //our clock becomes 1MHz
 
 reg [31:0] count;
 
always @ (posedge(clk))
begin
    if (count == constantNumber - 1)
        count <= 32'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk))
begin
    if (count == constantNumber - 1)
        clk_div <= ~clk_div;
    else
        clk_div <= clk_div;
end
 
endmodule