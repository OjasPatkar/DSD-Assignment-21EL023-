module pipo_tb();
reg clk;
reg [3:0]b;
wire [3:0]a;

pipo_design uut(.clk(clk),.b(b),.a(a));

initial
begin
clk=0;
forever #10clk=~clk;
end

initial
begin
#10;
b=4'b1000;
#10;
b=4'b0101;
#10;
$display("clk=%d,b=%d,a=%d",clk,b,a);
#100 $finish;
end
endmodule
