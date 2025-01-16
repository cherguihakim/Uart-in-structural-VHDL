library verilog;
use verilog.vl_types.all;
entity RDTD is
    port(
        i_resetBar      : in     vl_logic;
        i_load          : in     vl_logic;
        i_clock         : in     vl_logic;
        shift_droite    : in     vl_logic;
        i_Value         : in     vl_logic_vector(7 downto 0);
        finish_shifting : out    vl_logic;
        o_Value         : out    vl_logic
    );
end RDTD;
