LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY three_bit_serial_shift_right_register IS
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		shift_droite : IN STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(2 downto 0);
		o_register_empty : OUT STD_LOGIC;
		o_Value			: OUT	STD_LOGIC_VECTOR(2 downto 0));
END three_bit_serial_shift_right_register;

ARCHITECTURE rtl OF three_bit_serial_shift_right_register IS
	SIGNAL int_y2,int_y1,int_y0 : STD_LOGIC;

	COMPONENT enARdFF_2
		PORT(
			i_resetBar	: IN	STD_LOGIC;
			i_d		: IN	STD_LOGIC;
			i_enable	: IN	STD_LOGIC;
			i_clock		: IN	STD_LOGIC;
			o_q, o_qBar	: OUT	STD_LOGIC);
	END COMPONENT;

BEGIN

bit2: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => NOT(shift_droite) AND i_value(2), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_y2
	          );
bit1: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (NOT(shift_droite) AND i_value(1)) OR (shift_droite AND i_value(2)),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_y1
	          );

bit0: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d =>(NOT(shift_droite) AND i_value(0)) OR (shift_droite AND i_value(1)), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q =>int_y0
	         );

	-- Output Driver
	o_Value		<= int_y2 & int_y1 & int_y0;
	o_register_empty <=( NOT (int_y2) ) AND (NOT(int_y1)) AND (NOT(int_y0)); 

END rtl;
