LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY one_bit_comparator_eq IS
	PORT( a,b : in std_logic;
	      eq : out std_logic);
end one_bit_comparator_eq;

architecture rtl of one_bit_comparator_eq is 
BEGIN 
eq <= (not(a) and not(b)) or (a and b);
end rtl;