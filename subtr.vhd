Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity subtr is
  generic(
    WIDTH : natural);  -- Number of input bits
  port(
    A, B   : in  std_logic_vector(WIDTH-1 downto 0);
	 output   : out std_logic_vector(WIDTH-1 downto 0));
end entity;

architecture syn of subtr is

SIGNAL subresult : signed(WIDTH-1 downto 0);
begin
	subresult <= signed(A(WIDTH-1 downto 0)) - signed(B(WIDTH-1 downto 0));
	output <= std_logic_vector(subresult);
end architecture;