library verilog;
use verilog.vl_types.all;
entity eight_bit_shift_left_register_vlg_sample_tst is
    port(
        i_clock         : in     vl_logic;
        i_load          : in     vl_logic;
        i_resetBar      : in     vl_logic;
        i_Value         : in     vl_logic_vector(7 downto 0);
        shift_gauche    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end eight_bit_shift_left_register_vlg_sample_tst;