library verilog;
use verilog.vl_types.all;
entity three_bit_serial_shift_right_register_vlg_check_tst is
    port(
        o_register_empty: in     vl_logic;
        o_Value         : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end three_bit_serial_shift_right_register_vlg_check_tst;
