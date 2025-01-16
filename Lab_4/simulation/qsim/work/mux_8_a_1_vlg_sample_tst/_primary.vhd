library verilog;
use verilog.vl_types.all;
entity mux_8_a_1_vlg_sample_tst is
    port(
        a0              : in     vl_logic_vector(7 downto 0);
        a1              : in     vl_logic_vector(7 downto 0);
        a2              : in     vl_logic_vector(7 downto 0);
        a3              : in     vl_logic_vector(7 downto 0);
        a4              : in     vl_logic_vector(7 downto 0);
        a5              : in     vl_logic_vector(7 downto 0);
        a6              : in     vl_logic_vector(7 downto 0);
        a7              : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_8_a_1_vlg_sample_tst;
