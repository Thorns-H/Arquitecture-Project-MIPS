`timescale 1ns/1ns

module Mem(
    input MemWrite,
    input MemRead,
    input [31:0]Adress,
    input [31:0]WriteD,
    output reg[31:0]Rdata

);

reg [31:0] T [0:31];

always @* begin

if (MemRead == 1) 
    begin
      T[Adress] <= WriteD;
    end
    
    
  if (MemWrite == 1) 
    begin
      Rdata <= T[Adress]; 
    end

end

endmodule

