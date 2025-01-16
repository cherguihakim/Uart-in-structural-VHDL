library verilog;
use verilog.vl_types.all;
entity three_bit_serial_shift_right_register_vlg_sample_tst is
    port(
        i_clock         : in     vl_logic;
        i_load          : in     vl_logic;
        i_resetBar      : in     vl_logic;
        i_Value         : in     vl_logic_vector(2 downto 0);
        shift_droite    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end three_bit_serial_shift_right_register_vlg_sample_tst;
