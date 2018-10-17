library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd is
  generic (
    WIDTH : natural := 16);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    go     : in  std_logic;
    done   : out std_logic;
    x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
    output : out std_logic_vector(WIDTH-1 downto 0));
end gcd;

architecture FSM of gcd is

COMPONENT ctrl1
generic (
    WIDTH : natural := 16);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    go     : in  std_logic;
    done   : out std_logic;
    x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
    output : out std_logic_vector(WIDTH-1 downto 0));

end COMPONENT;

begin
controller : ctrl1
  generic map (
            WIDTH => WIDTH) -- 50 MHZ to 1Khz
        port map (
            clk => clk,
            rst => rst,
				go => go,
				done => done,
				x => x,
				y => y,
            output => output);

end FSM;