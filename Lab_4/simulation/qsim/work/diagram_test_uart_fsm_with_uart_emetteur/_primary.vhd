library verilog;
use verilog.vl_types.all;
entity diagram_test_uart_fsm_with_uart_emetteur is
    port(
        o_TxD           : out    vl_logic;
        CLOCK           : in     vl_logic;
        RESET_BAR       : in     vl_logic;
        LOAD_UART_FSM   : in     vl_logic;
        STATE           : in     vl_logic_vector(1 downto 0);
        LOAD_CONTROLEUR : in     vl_logic
    );
end diagram_test_uart_fsm_with_uart_emetteur;
