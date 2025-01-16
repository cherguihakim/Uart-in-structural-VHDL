library verilog;
use verilog.vl_types.all;
entity diagram_test_uart_fsm_with_uart_emetteur_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        LOAD_CONTROLEUR : in     vl_logic;
        LOAD_UART_FSM   : in     vl_logic;
        RESET_BAR       : in     vl_logic;
        STATE           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end diagram_test_uart_fsm_with_uart_emetteur_vlg_sample_tst;
