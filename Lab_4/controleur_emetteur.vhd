LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY controleur_emetteur IS 
PORT (i_resetBar, i_clock, load_emetteur, load_RTD, data_sent, shifting_done : IN STD_LOGIC;
      load_RDTD, RTDV, shift_droite_RDTD : OUT STD_LOGIC );

END ENTITY;

ARCHITECTURE struct OF controleur_emetteur IS 
SIGNAL int_y1, int_y0 : STD_LOGIC;

COMPONENT enARdFF_2
		PORT(
			i_resetBar	: IN	STD_LOGIC;
			i_d		: IN	STD_LOGIC;
			i_enable	: IN	STD_LOGIC;
			i_clock		: IN	STD_LOGIC;
			o_q, o_qBar	: OUT	STD_LOGIC);
END COMPONENT;

BEGIN 

Y1 : enARdFF_2 
PORT MAP (i_resetBar => i_resetBar,
          i_clock => i_clock,
          i_d => (int_y1 and not(int_y0) and not(load_RTD) and not(data_sent) and not(shifting_done)) OR (not(load_RTD) and data_sent and not(shifting_done) and 
			        (int_y1 xor int_y0)) OR (not(load_RTD) and data_sent and shifting_done and not(int_y1) and int_y0) OR (load_RTD and not(data_sent) and not(shifting_done) and
					  int_y1 and not(int_y0)) OR (load_RTD and data_sent and not(shifting_done) and (int_y1 xor int_y0)) OR (load_RTD and data_sent and shifting_done and not(int_y1) and int_y0),
          i_enable => load_emetteur,
          o_q => int_y1   );

Y0  : enARdFF_2 
PORT MAP (i_resetBar => i_resetBar,
          i_clock => i_clock,
          i_d => (int_y0 and not(int_y1) and not(load_RTD) and not(data_sent) and not(shifting_done)) OR (not(load_RTD) and not(data_sent) and(shifting_done) and 
			        not(int_y1) and int_y0) OR (load_RTD and not(data_sent) and not(shifting_done) and ((not(int_y1)and not(int_y0)) or (not(int_y1) and int_y0))) OR 
					  (load_RTD and not(data_sent) and shifting_done and ((not(int_y1)and not(int_y0)) or (not(int_y1) and int_y0))) OR (load_RTD and data_sent and not(shifting_done) and
					  not(int_y1) and not(int_y0)) OR (load_RTD and data_sent and shifting_done and not(int_y1) and not(int_y0)),
          i_enable => load_emetteur,
          o_q => int_y0  );
			 
shift_droite_RDTD <= int_y1 and not(int_y0);
RTDV <= not(int_y1) and not(int_y0);
load_RDTD <= (not(int_y1) and int_y0) OR (int_y1 and not(int_y0));

END struct;