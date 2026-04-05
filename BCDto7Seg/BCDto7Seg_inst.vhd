	component BCDto7Seg is
		port (
			clk_clk                         : in  std_logic                    := 'X';             -- clk
			hex3_0_external_interface_HEX0  : out std_logic_vector(6 downto 0);                    -- HEX0
			hex3_0_external_interface_HEX1  : out std_logic_vector(6 downto 0);                    -- HEX1
			hex3_0_external_interface_HEX2  : out std_logic_vector(6 downto 0);                    -- HEX2
			hex3_0_external_interface_HEX3  : out std_logic_vector(6 downto 0);                    -- HEX3
			ledg_external_connection_export : out std_logic_vector(3 downto 0);                    -- export
			ledr_external_connection_export : out std_logic_vector(3 downto 0);                    -- export
			reset_reset_n                   : in  std_logic                    := 'X';             -- reset_n
			sws_external_connection_export  : in  std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component BCDto7Seg;

	u0 : component BCDto7Seg
		port map (
			clk_clk                         => CONNECTED_TO_clk_clk,                         --                       clk.clk
			hex3_0_external_interface_HEX0  => CONNECTED_TO_hex3_0_external_interface_HEX0,  -- hex3_0_external_interface.HEX0
			hex3_0_external_interface_HEX1  => CONNECTED_TO_hex3_0_external_interface_HEX1,  --                          .HEX1
			hex3_0_external_interface_HEX2  => CONNECTED_TO_hex3_0_external_interface_HEX2,  --                          .HEX2
			hex3_0_external_interface_HEX3  => CONNECTED_TO_hex3_0_external_interface_HEX3,  --                          .HEX3
			ledg_external_connection_export => CONNECTED_TO_ledg_external_connection_export, --  ledg_external_connection.export
			ledr_external_connection_export => CONNECTED_TO_ledr_external_connection_export, --  ledr_external_connection.export
			reset_reset_n                   => CONNECTED_TO_reset_reset_n,                   --                     reset.reset_n
			sws_external_connection_export  => CONNECTED_TO_sws_external_connection_export   --   sws_external_connection.export
		);

