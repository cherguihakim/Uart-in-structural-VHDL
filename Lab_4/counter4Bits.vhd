LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY counter4Bits IS
    PORT(
        i_resetBar, i_load : IN  STD_LOGIC;
        i_clock            : IN  STD_LOGIC;
        o_Value            : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
END counter4Bits;

ARCHITECTURE rtl OF counter4Bits IS
    SIGNAL int_y3, int_y2, int_y1,  int_y0 : STD_LOGIC;
    
    COMPONENT enARdFF_2
        PORT(
            i_resetBar : IN  STD_LOGIC;
            i_d        : IN  STD_LOGIC;
            i_enable   : IN  STD_LOGIC;
            i_clock    : IN  STD_LOGIC;
            o_q, o_qBar : OUT STD_LOGIC
        );
    END COMPONENT;

BEGIN

    -- Concurrent Signal Assignments

    y3: enARdFF_2
    PORT MAP (
        i_resetBar => i_resetBar,
        i_d        => (not(int_y3) and int_y2 and int_y1 and int_y0) or (int_y3 and not(int_y2)) or (int_y3 and not(int_y1)) or (int_y3 and not(int_y0)),
        i_enable   => i_load,
        i_clock    => i_clock,
        o_q        => int_y3
        
    );

    y2: enARdFF_2
    PORT MAP (
        i_resetBar => i_resetBar,
        i_d        => (not(int_y2) and int_y1 and int_y0) or (int_y2 and not(int_y1)) or (int_y2 and not(int_y0)),
        i_enable   => i_load,
        i_clock    => i_clock,
        o_q        => int_y2
        
    );

    y1: enARdFF_2
    PORT MAP (
        i_resetBar => i_resetBar,
        i_d        => int_y1 xor int_y0,
        i_enable   => i_load,
        i_clock    => i_clock,
        o_q        => int_y1
      
    );

    y0: enARdFF_2
    PORT MAP (
        i_resetBar => i_resetBar,
        i_d        => not(int_y0) ,
        i_enable   => i_load,
        i_clock    => i_clock,
        o_q        => int_y0
       
    );

    -- Output Driver
    o_Value <= int_y3 & int_y2 & int_y1 & int_y0;

END rtl;
