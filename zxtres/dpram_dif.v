
module dpram_dif
(
	input	                 clock,

	input	  [7:0] address_a,
	input	  [15:0] data_a,
	input	  wren_a,
	output reg[15:0] q_a,

	input	 [6:0] address_b,
	input	 [31:0] data_b,
	input	 wren_b,
	output reg[31:0] q_b
);

    reg[15:0] ram[0:255];

    always @(posedge clock) begin
        if (wren_a) ram[address_a] <= data_a;
        else q_a <= ram[address_a];
    end

    always @(posedge clock) begin
        if (wren_b) { ram[{address_b,1'b0}], ram[{address_b,1'b1}] } <= data_b;
        else q_b <= { ram[{address_b,1'b0}], ram[{address_b,1'b1}] };
    end

endmodule
