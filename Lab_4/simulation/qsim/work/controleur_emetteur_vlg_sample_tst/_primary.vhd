library verilog;
use verilog.vl_types.all;
entity controleur_emetteur_vlg_sample_tst is
    port(
        data_sent       : in     vl_logic;
        i_clock         : in     vl_logic;
        i_resetBar      : in     vl_logic;
        load_emetteur   : in     vl_logic;
        load_RTD        : in     vl_logic;
        shifting_done   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controleur_emetteur_vlg_sample_tst;
