library verilog;
use verilog.vl_types.all;
entity RTD_vlg_check_tst is
    port(
        o_Value         : in     vl_logic_vector(7 downto 0);
        sending_data_done: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end RTD_vlg_check_tst;
