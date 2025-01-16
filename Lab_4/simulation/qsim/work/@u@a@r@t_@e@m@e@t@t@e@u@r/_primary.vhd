library verilog;
use verilog.vl_types.all;
entity UART_EMETTEUR is
    port(
        i_clock         : in     vl_logic;
        i_resetBar      : in     vl_logic;
        load_RTD        : in     vl_logic;
        load_contoleur_emetteur: in     vl_logic;
        data_8bits      : in     vl_logic_vector(7 downto 0);
        TxD             : out    vl_logic;
        RTDV            : out    vl_logic;
        finish_shift    : out    vl_logic
    );
end UART_EMETTEUR;
