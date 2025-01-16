library verilog;
use verilog.vl_types.all;
entity UART_FSM_vlg_sample_tst is
    port(
        finish_shifting : in     vl_logic;
        i_clock         : in     vl_logic;
        i_resetBar      : in     vl_logic;
        load_UART_FSM   : in     vl_logic;
        present_state   : in     vl_logic_vector(1 downto 0);
        RTDV_UART_EMETTEUR: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end UART_FSM_vlg_sample_tst;
