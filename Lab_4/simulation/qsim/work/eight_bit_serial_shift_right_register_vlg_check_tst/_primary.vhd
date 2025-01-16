library verilog;
use verilog.vl_types.all;
entity eight_bit_serial_shift_right_register_vlg_check_tst is
    port(
        o_Value         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end eight_bit_serial_shift_right_register_vlg_check_tst;
