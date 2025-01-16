LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RDTD IS
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		shift_droite : IN STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
		finish_shifting : OUT STD_LOGIC;
		o_Value			: OUT	STD_LOGIC);
END RDTD;

ARCHITECTURE rtl OF RDTD IS
	SIGNAL int_Value, int_notValue : STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL i_value_temp : STD_LOGIC_VECTOR(8 downto 0);
	SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL count_exp : STD_LOGIC;

	COMPONENT enARdFF_2
		PORT(
			i_resetBar	: IN	STD_LOGIC;
			i_d		: IN	STD_LOGIC;
			i_enable	: IN	STD_LOGIC;
			i_clock		: IN	STD_LOGIC;
			o_q, o_qBar	: OUT	STD_LOGIC);
	END COMPONENT;
	
	COMPONENT counter4Bits_with_clear 
	PORT(
        i_resetBar, i_load, i_clear : IN  STD_LOGIC;
        i_clock            : IN  STD_LOGIC;
        o_Value            : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
END COMPONENT;

   COMPONENT four_bit_comparator_eq 
	PORT( int_a,int_b : in std_logic_vector(3 downto 0);
	      out_eq : out std_logic);
END COMPONENT;


BEGIN
i_value_temp(8) <= i_value(7);
i_value_temp(7) <= i_value(6);
i_value_temp(6) <= i_value(5);
i_value_temp(5) <= i_value(4);
i_value_temp(4) <= i_value(3);
i_value_temp(3) <= i_value(2);
i_value_temp(2) <= i_value(1);
i_value_temp(1) <= i_value(0);
i_value_temp(0) <= '0';


Counter : counter4Bits_with_clear 
PORT MAP( i_resetBar => i_resetBar,
          i_load => i_load,
			 i_clear => not(shift_droite),
			 i_clock => i_clock,
			 o_value => count);

Comparateur : four_bit_comparator_eq 
PORT MAP ( int_a => count,
           int_b => "1001",
			  out_eq => count_exp
                   );
						 


bit8: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(8) AND ( NOT(shift_droite)))OR('1' AND (shift_droite)), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(8),
	          o_qBar => int_notValue(8));

bit7: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(7) AND (NOT shift_droite))OR(int_value(8)AND shift_droite),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(7),
	          o_qBar => int_notValue(7));

bit6: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(6) AND (NOT shift_droite))OR(int_value(7)AND shift_droite), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(6),
	          o_qBar => int_notValue(6));
				 
bit5: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(5) AND (NOT shift_droite))OR(int_value(6)AND shift_droite), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(5),
	          o_qBar => int_notValue(5));

bit4: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d =>(i_value_temp(4) AND (NOT shift_droite))OR(int_value(5)AND shift_droite),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(4),
	          o_qBar => int_notValue(4));

bit3: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(3) AND (NOT shift_droite))OR(int_value(4)AND shift_droite), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(3),
	          o_qBar => int_notValue(3));
				 
bit2: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(2) AND (NOT shift_droite))OR(int_value(3)AND shift_droite),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(2),
	          o_qBar => int_notValue(2));

bit1: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(1) AND (NOT shift_droite))OR(int_value(2) AND shift_droite), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(1),
	          o_qBar => int_notValue(1));
				 
bit0: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => (i_value_temp(0) AND (NOT shift_droite))OR(int_value(1) AND shift_droite), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(0),
	          o_qBar => int_notValue(0));


				 


	-- Output Driver
	o_Value		<= int_Value(0) OR NOT(shift_droite);
	finish_shifting <= count_exp;

END rtl;
