library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- use '+' operator, CONV_INTEGER func.


entity baud_generator is

port(Sysclk, rst_b: in std_logic;
Sel: in std_logic_vector(2 downto 0);
BclkX8: buffer std_logic;
Bclk: out std_logic);

end baud_generator;

architecture behav of baud_generator is

signal ctr1: std_logic_vector (5 downto 0):= "000000"; -- divide by 41 counter
signal ctr2: std_logic_vector (7 downto 0):= "00000000"; -- div by 256 ctr
signal ctr3: std_logic_vector (2 downto 0):= "000"; -- divide by 8 counter
signal Clkdiv41: std_logic;

begin
process (Sysclk) -- first divide system clock by 41
begin

if (Sysclk'event and Sysclk = '1') then
    if (ctr1 = "101000") then ctr1 <= "000000";
else ctr1 <= ctr1 + 1; 
    end if;
end if;
end process;

Clkdiv41 <= ctr1(5); -- divide Sysclk by 41
process (Clkdiv41) -- clk_divdr is an 8-bit counter
begin
if (rising_edge(Clkdiv41)) then
ctr2 <= ctr2 + 1;
end if;
end process;

BclkX8 <= ctr2(CONV_INTEGER(sel)); -- select baud rate
process (BclkX8)
begin
if (rising_edge(BclkX8)) then
ctr3 <= ctr3 + 1;
end if;
end process;
Bclk <= ctr3(2); -- Bclk is BclkX8 divided by 8

end behav;