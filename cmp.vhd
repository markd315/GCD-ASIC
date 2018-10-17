Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cmp is
  generic(
    WIDTH : natural);  -- Number of input bits
  port(
    X   : in  std_logic_vector(WIDTH-1 downto 0);
	 Y   : in  std_logic_vector(WIDTH-1 downto 0);
	 x_lt_y : out std_logic := '0';
	 x_ne_y : out std_logic := '0');
end entity;

architecture syn of cmp is
begin

x_lt_y <= '1' when (X < Y)
else '0';
x_ne_y <= '1' when (X /= Y)
else '0';

end architecture;