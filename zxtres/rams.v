// rdaddress	=> PROG_ROM_ADDR,
//
module progrom#(parameter addr_width=8, data_width=8)
(
	input	                 clock,
	input	 [addr_width-1:0] address,
	output [data_width-1:0] q
);
	spram #(addr_width, data_width, "../rtl/chip/DSP/dsp11b23410_p.mif") progrom_inst
	(
		.clock(clock),
		.rdaddress(address),
		.wraddress(0),
		.data(0),
		.wren(1'b0),
		.q(q)
	);

endmodule;

module datarom#(parameter addr_width=8, data_width=8)
(
	input	                 clock,
	input	 [addr_width-1:0] address,
	output [data_width-1:0] q
);
	spram #(addr_width, data_width, "../rtl/chip/DSP/dsp11b23410_d.mif") datarom_inst
	(
		.clock(clock),
		.rdaddress(address),
		.wraddress(0),
		.data(0),
		.wren(1'b0),
		.q(q)
	);

endmodule;

module datarom2#(parameter addr_width=8, data_width=8)
(
	input	                 clock,
	input	 [addr_width-1:0] address,
	output [data_width-1:0] q
);
	spram #(addr_width, data_width, "../rtl/chip/CX4/drom.mif") datarom2_inst
	(
		.clock(clock),
		.rdaddress(address),
		.wraddress(0),
		.data(0),
		.wren(1'b0),
		.q(q)
	);

endmodule;
