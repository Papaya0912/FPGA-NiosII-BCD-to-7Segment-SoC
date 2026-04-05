
module BCDto7Seg (
	clk_clk,
	hex3_0_external_interface_HEX0,
	hex3_0_external_interface_HEX1,
	hex3_0_external_interface_HEX2,
	hex3_0_external_interface_HEX3,
	ledg_external_connection_export,
	ledr_external_connection_export,
	reset_reset_n,
	sws_external_connection_export);	

	input		clk_clk;
	output	[6:0]	hex3_0_external_interface_HEX0;
	output	[6:0]	hex3_0_external_interface_HEX1;
	output	[6:0]	hex3_0_external_interface_HEX2;
	output	[6:0]	hex3_0_external_interface_HEX3;
	output	[3:0]	ledg_external_connection_export;
	output	[3:0]	ledr_external_connection_export;
	input		reset_reset_n;
	input	[3:0]	sws_external_connection_export;
endmodule
