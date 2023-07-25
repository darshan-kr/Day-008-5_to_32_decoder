module decoder(
  input [4:0]in,
  input enable,
  output reg [31:0]out);
  integer i;
  
  always@(*) begin
    if(enable == 1'b0)
      out = 32'd0;
    else begin
      out = 32'd1;
      for(i = 0; i < 32; i = i+1)
        begin
          case(in)
            i:out = 2**i;
          endcase
        end
    end
  end
endmodule
