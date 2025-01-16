library verilog;
use verilog.vl_types.all;
entity UART_EMETTEUR_vlg_sample_tst is
    port(
        data_8bits      : in     vl_logic_vector(7 downto 0);
        i_clock         : in     vl_logic;
        i_resetBar      : in     vl_logic;
        load_contoleur_emetteur: in     vl_logic;
        load_RTD        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end UART_EMETTEUR_vlg_sample_tst;
