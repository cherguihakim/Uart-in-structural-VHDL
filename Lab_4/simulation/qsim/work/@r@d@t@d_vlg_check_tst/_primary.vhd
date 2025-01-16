library verilog;
use verilog.vl_types.all;
entity RDTD_vlg_check_tst is
    port(
        finish_shifting : in     vl_logic;
        o_Value         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end RDTD_vlg_check_tst;
