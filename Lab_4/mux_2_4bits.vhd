LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_2_4bits is 
 port(
    a1      : in  std_logic_vector(3 downto 0);
    a2      : in  std_logic_vector(3 downto 0);
    sel     : in  std_logic;
    b       : out std_logic_vector(3 downto 0)
  );
end mux_2_4bits;
architecture rtl of mux_2_4bits is
begin
  p_mux : process(a1,a2,sel)
  begin
    case sel is
      when '0'=> b <= a1 ;
      when '1' => b <= a2 ;
    end case;
  end process p_mux;
end rtl;