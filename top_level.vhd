-- I/O Explanation (assumes the switches are on side of the
--                  board that is closest to you)
-- switch(9) is the leftmost switch
-- button(1) is the top button
-- led5 is the leftmost 7-segment LED
-- ledx_dp is the decimal point on the 7-segment LED for LED x

-- Note: this code will cause a harmless synthesis warning because not all
-- the buttons are used and because some output pins are always '0' or '1'

library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        clk50MHz : in  std_logic;
        switch   : in  std_logic_vector(9 downto 0);
        button   : in  std_logic_vector(1 downto 0);
        led0     : out std_logic_vector(0 to 6);
		  led0_dp     : out std_logic;
        led1     : out std_logic_vector(0 to 6)
        );
end top_level;

architecture STR of top_level is
    component decoder7seg
        port (
            input  : in  std_logic_vector(3 downto 0);
            output : out std_logic_vector(0 to 6));
    end component;

	 COMPONENT gcd generic (WIDTH : natural := 16);
	 port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    go     : in  std_logic;
    done   : out std_logic;
    x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
    output : out std_logic_vector(WIDTH-1 downto 0));
	end COMPONENT;
    signal gcdOut    : std_logic_vector(7 downto 0);
	 signal catx    : std_logic_vector(7 downto 0);
	 signal caty    : std_logic_vector(7 downto 0);

begin  -- STR

catx <= "000" & switch(9 downto 5);
caty <= "000" & switch(4 downto 0);

    U_GCD : gcd generic map(WIDTH => 8)
	 port map (
        clk    => clk50MHz,
        rst    => not button(0),
		  go    => not button(1),
		  done => led0_dp,
		  x    => catx,
		  y    => caty,
        output => gcdOut);
    
    U_LED1 : decoder7seg port map (
        input  => (gcdOut(7 downto 4)),
        output => led1(0 to 6));

    U_LED0 : decoder7seg port map (
        input  => (gcdOut(3 downto 0)),
        output => led0(0 to 6));
end STR;
