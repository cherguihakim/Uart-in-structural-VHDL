library verilog;
use verilog.vl_types.all;
entity UART_FSM is
    port(
        i_clock         : in     vl_logic;
        i_resetBar      : in     vl_logic;
        finish_shifting : in     vl_logic;
        load_UART_FSM   : in     vl_logic;
        RTDV_UART_EMETTEUR: in     vl_logic;
        present_state   : in     vl_logic_vector(1 downto 0);
        load_RTD        : out    vl_logic;
        o_caractere_8bits: out    vl_logic_vector(7 downto 0)
    );
end UART_FSM;
