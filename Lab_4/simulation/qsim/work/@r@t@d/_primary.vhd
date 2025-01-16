library verilog;
use verilog.vl_types.all;
entity RTD is
    port(
        i_resetBar      : in     vl_logic;
        i_load          : in     vl_logic;
        i_clock         : in     vl_logic;
        i_Value         : in     vl_logic_vector(7 downto 0);
        sending_data_done: out    vl_logic;
        o_Value         : out    vl_logic_vector(7 downto 0)
    );
end RTD;
