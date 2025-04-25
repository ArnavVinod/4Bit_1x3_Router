//module

module router_1x3_4bit (
input wire clk,
input wire rst,
input wire [3:0] data_in,
input wire [1:0] sel,
input wire valid_in,

output reg [3:0] out0,
output reg [3:0] out1,
output reg [3:0] out2,
output reg valid_out0,
output reg valid_out1,
output reg valid_out2
);

always @(posedge clk or posedge rst) begin
if (rst) begin
out0 <= 0;
out1 <= 0;
out2 <= 0;
valid_out0 <= 0;
valid_out1 <= 0;
valid_out2 <= 0;
end else begin
valid_out0 <= 0;
valid_out1 <= 0;
valid_out2 <= 0;

if (valid_in) begin
case (sel)
2'b00: begin out0 <= data_in; valid_out0 <= 1; end
2'b01: begin out1 <= data_in; valid_out1 <= 1; end
2'b10: begin out2 <= data_in; valid_out2 <= 1; end
default: ; // ignore for 2'b11
endcase
end
end
end

endmodule
