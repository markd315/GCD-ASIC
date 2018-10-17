library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cmp_tb is
end cmp_tb;

architecture TB of cmp_tb is

signal x_lt_y, x_ne_y    : std_logic;
signal X, Y : std_logic_vector(3 downto 0);

begin  -- TB

  UUT : entity work.cmp
  generic map(WIDTH => 4)
    port map (
      X    => X,
      Y    => Y,
		x_lt_y    => x_lt_y,
		x_ne_y    => x_ne_y);

  process
  begin
    -- test all input combinations
    for i in 0 to 15 loop
	  for j in 0 to 15 loop
          X <= std_logic_vector(to_unsigned(i, 4)(3 downto 0));
		    Y <= std_logic_vector(to_unsigned(j, 4)(3 downto 0));
          wait for 120 ns;
        end loop;
      end loop;

    report "SIMULATION FINISHED!";
    
    wait;

  end process;

end TB;
