library ieee;
use ieee.std_logic_1164.all;

entity regis is
  generic(
    WIDTH : natural);  -- Number of input bits
  port(
    i   : in  std_logic_vector(WIDTH-1 downto 0);
	 o   : out  std_logic_vector(WIDTH-1 downto 0);
	 en, clk   : in std_logic); --store enable
end entity;

architecture syn of regis is
begin

process(clk)
begin

if (clk'event and clk = '1' and en = '1') then
	o <= i;
end if;

end process;
end architecture;