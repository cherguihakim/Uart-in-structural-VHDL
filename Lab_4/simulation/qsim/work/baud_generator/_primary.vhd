library verilog;
use verilog.vl_types.all;
entity baud_generator is
    port(
        Sysclk          : in     vl_logic;
        rst_b           : in     vl_logic;
        Sel             : in     vl_logic_vector(2 downto 0);
        BclkX8          : out    vl_logic;
        Bclk            : out    vl_logic
    );
end baud_generator;
