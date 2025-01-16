LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_8_a_1 is 
 port(
    a0      : in  std_logic_vector(7 downto 0);
    a1      : in  std_logic_vector(7 downto 0);
	 a2      : in  std_logic_vector(7 downto 0);
	 a3      : in  std_logic_vector(7 downto 0);
	 a4      : in  std_logic_vector(7 downto 0);
	 a5      : in  std_logic_vector(7 downto 0);
	 a6      : in  std_logic_vector(7 downto 0);
	 a7      : in  std_logic_vector(7 downto 0);
    sel     : in  std_logic_vector(2 downto 0);
    b       : out std_logic_vector(7 downto 0)
  );
end mux_8_a_1;

architecture rtl of mux_8_a_1 is
begin
  p_mux : process(a0,a1,a2,a3,a4,a5,a6,a7,sel)
  begin
    case sel is
      when "000" => b <= a0 ;
      when "001" => b <= a1 ;
		when "010" => b <= a2 ;
		when "011" => b <= a3 ;
		when "100" => b <= a4 ;
		when "101" => b <= a5 ;
		when "110" => b <= a6 ;
		when "111" => b <= a7 ;
    end case;
  end process p_mux;
end rtl;