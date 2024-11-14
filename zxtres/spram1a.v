
module spram #(parameter addr_width=8, data_width=8, mem_init_file="", NUMWORDS=1<<addr_width)
(
	input	                 clock,

	input	 [addr_width-1:0] rdaddress,
	input	 [addr_width-1:0] wraddress,
	input	 [data_width-1:0] data,
	input	                 wren,
	output reg[data_width-1:0] q
);

    reg[data_width-1:0] ram[0:NUMWORDS-1];

    initial begin
        $readmemh(mem_init_file, ram);
    end
    
    always @(posedge clock) begin
        if (wren) ram[wraddress] <= data;
        else q <= ram[wraddress];
    end

    always @(posedge clock) begin
        if (wren) ram[rdaddress] <= data;
        else q <= ram[rdaddress];
    end

endmodule
