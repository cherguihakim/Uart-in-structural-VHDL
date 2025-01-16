library verilog;
use verilog.vl_types.all;
entity controleur_emetteur is
    port(
        i_resetBar      : in     vl_logic;
        i_clock         : in     vl_logic;
        load_emetteur   : in     vl_logic;
        load_RTD        : in     vl_logic;
        data_sent       : in     vl_logic;
        shifting_done   : in     vl_logic;
        load_RDTD       : out    vl_logic;
        RTDV            : out    vl_logic;
        shift_droite_RDTD: out    vl_logic
    );
end controleur_emetteur;
