library verilog;
use verilog.vl_types.all;
entity eight_bit_shift_left_register is
    port(
        i_resetBar      : in     vl_logic;
        i_load          : in     vl_logic;
        i_clock         : in     vl_logic;
        shift_gauche    : in     vl_logic;
        i_Value         : in     vl_logic_vector(7 downto 0);
        o_Value         : out    vl_logic_vector(7 downto 0)
    );
end eight_bit_shift_left_register;
