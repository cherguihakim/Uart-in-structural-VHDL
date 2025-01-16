library verilog;
use verilog.vl_types.all;
entity UART_EMETTEUR_vlg_check_tst is
    port(
        finish_shift    : in     vl_logic;
        RTDV            : in     vl_logic;
        TxD             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UART_EMETTEUR_vlg_check_tst;
