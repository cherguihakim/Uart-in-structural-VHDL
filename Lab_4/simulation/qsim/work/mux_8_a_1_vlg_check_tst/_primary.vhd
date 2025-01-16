library verilog;
use verilog.vl_types.all;
entity mux_8_a_1_vlg_check_tst is
    port(
        b               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_8_a_1_vlg_check_tst;
