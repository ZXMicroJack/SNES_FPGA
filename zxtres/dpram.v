
module dpram #(parameter addr_width=8, data_width=8, mem_init_file="", NUMWORDS=1<<addr_width)
(
	input	                 clock,

	input	 [addr_width-1:0] address_a,
	input	 [data_width-1:0] data_a,
	input	                 wren_a,
	output reg[data_width-1:0] q_a,

	input	 [addr_width-1:0] address_b,
	input	 [data_width-1:0] data_b,
	input	                 wren_b,
	output reg[data_width-1:0] q_b
);

    reg[data_width-1:0] ram[0:NUMWORDS-1];

    initial begin
        $readmemh(mem_init_file, ram);
    end
    
    always @(posedge clock) begin
        if (wren_a) ram[address_a] <= data_a;
        else q_a <= ram[address_a];
    end

    always @(posedge clock) begin
        if (wren_b) ram[address_b] <= data_b;
        else q_b <= ram[address_b];
    end

endmodule
