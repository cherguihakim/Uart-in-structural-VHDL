library verilog;
use verilog.vl_types.all;
entity controleur_emetteur_vlg_check_tst is
    port(
        load_RDTD       : in     vl_logic;
        RTDV            : in     vl_logic;
        shift_droite_RDTD: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end controleur_emetteur_vlg_check_tst;
