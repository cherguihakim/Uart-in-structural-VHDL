library verilog;
use verilog.vl_types.all;
entity three_bit_serial_shift_right_register is
    port(
        i_resetBar      : in     vl_logic;
        i_load          : in     vl_logic;
        i_clock         : in     vl_logic;
        shift_droite    : in     vl_logic;
        i_Value         : in     vl_logic_vector(2 downto 0);
        o_register_empty: out    vl_logic;
        o_Value         : out    vl_logic_vector(2 downto 0)
    );
end three_bit_serial_shift_right_register;
