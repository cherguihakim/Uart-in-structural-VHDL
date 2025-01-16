library verilog;
use verilog.vl_types.all;
entity baud_generator_vlg_sample_tst is
    port(
        rst_b           : in     vl_logic;
        Sel             : in     vl_logic_vector(2 downto 0);
        Sysclk          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end baud_generator_vlg_sample_tst;
