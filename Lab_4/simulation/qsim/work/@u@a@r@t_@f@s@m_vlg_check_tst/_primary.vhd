library verilog;
use verilog.vl_types.all;
entity UART_FSM_vlg_check_tst is
    port(
        load_RTD        : in     vl_logic;
        o_caractere_8bits: in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end UART_FSM_vlg_check_tst;
