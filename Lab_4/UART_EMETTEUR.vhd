LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY UART_EMETTEUR IS 
PORT (i_clock, i_resetBar, load_RTD, load_contoleur_emetteur : IN STD_LOGIC;
      data_8bits : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	   TxD, RTDV,finish_shift : OUT STD_LOGIC	);
		
END ENTITY;

ARCHITECTURE STRUCT OF UART_EMETTEUR IS 
SIGNAL int_sending_data_done, int_finish_shifting_RDTD, int_o_value_RDTD, int_o_value_RTDV : STD_LOGIC;
SIGNAL int_o_load_RDTD, int_o_shift_RDTD : STD_LOGIC;
SIGNAL int_o_value_RTD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL int_compteur_RDTD : STD_LOGIC_VECTOR(3 DOWNTO 0);

COMPONENT RTD 
PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
		sending_data_done   : OUT STD_LOGIC;
		o_Value			: OUT	STD_LOGIC_VECTOR(7 downto 0));
		
END COMPONENT;

COMPONENT RDTD 
PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		shift_droite : IN STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
		finish_shifting : OUT STD_LOGIC;
		o_Value			: OUT	STD_LOGIC);
		
END COMPONENT ;

COMPONENT controleur_emetteur 
PORT (i_resetBar, i_clock, load_emetteur, load_RTD, data_sent, shifting_done : IN STD_LOGIC;
      load_RDTD, RTDV, shift_droite_RDTD : OUT STD_LOGIC );

END COMPONENT;

BEGIN 

RTD_UART_EMETTEUR : RTD 
PORT MAP(i_resetBar => i_resetBar, i_load => load_RTD, i_clock => i_clock,
         i_Value => data_8bits, sending_data_done => int_sending_data_done, 
	      o_Value => int_o_value_RTD		);
			
			
RDTD_UART_EMETTEUR : RDTD
PORT MAP(i_resetBar => i_resetBar, i_load => int_o_load_RDTD, i_clock => i_clock,
         shift_droite => int_o_shift_RDTD, i_Value => int_o_value_RTD, finish_shifting => int_finish_shifting_RDTD,
         o_Value => int_o_value_RDTD			);
			
CONTOLEUR_UART_EMETTEUR : controleur_emetteur
PORT MAP (i_resetBar => i_resetBar, load_emetteur => load_contoleur_emetteur, i_clock => i_clock,
          load_RTD => load_RTD, data_sent => int_sending_data_done, shifting_done => int_finish_shifting_RDTD, 
          load_RDTD => int_o_load_RDTD, RTDV => int_o_value_RTDV, shift_droite_RDTD => int_o_shift_RDTD			 );
			 
			 
TxD <= int_o_value_RDTD;
RTDV <= int_o_value_RTDV;
finish_shift <= int_finish_shifting_RDTD;
END STRUCT;