LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY four_bit_comparator_eq IS
	PORT( int_a,int_b : in std_logic_vector(3 downto 0);
	      out_eq : out std_logic);
end four_bit_comparator_eq;

architecture rtl of four_bit_comparator_eq is 
SIGNAL eq3, eq2, eq1, eq0 : STD_LOGIC;
 

COMPONENT one_bit_comparator_eq 
PORT( a,b : in std_logic;
	      eq : out std_logic);
END COMPONENT; 

BEGIN
comp_bit_3 : one_bit_comparator_eq
PORT MAP(a=>int_a(3), b => int_b(3), eq => eq3 );

comp_bit_2 : one_bit_comparator_eq
PORT MAP(a=>int_a(2), b => int_b(2), eq => eq2 );

comp_bit_1 : one_bit_comparator_eq
PORT MAP(a=>int_a(1), b => int_b(1), eq => eq1 );

comp_bit_0 : one_bit_comparator_eq
PORT MAP(a=>int_a(0), b => int_b(0), eq => eq0 );

out_eq <= eq3 and eq2 and eq1 and eq0;

end rtl;