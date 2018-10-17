library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity genmux_tb is
end genmux_tb;

architecture TB of genmux_tb is

signal S    : std_logic;
signal A, B, Y : std_logic_vector(3 downto 0);

begin  -- TB

  UUT : entity work.genmux
  generic map(WIDTH => 4)
    port map (
      A    => A,
		B    => B,
		S    => S,
      Y    => Y);

  process
  begin
	A<= (others => 'U'); --ensure it can function with one element null.
	B<= "1010";
	S<='1';
	wait for 120 ns;
    -- test all input combinations
    for i in 0 to 15 loop
	  for j in 0 to 15 loop
	  for k in 0 to 1 loop
          A <= std_logic_vector(to_unsigned(i, 4)(3 downto 0));
		    B <= std_logic_vector(to_unsigned(j, 4)(3 downto 0));
			 S <= std_logic(to_unsigned(k, 1)(0));
          wait for 120 ns;
        end loop;
      end loop;
		end loop;

    report "SIMULATION FINISHED!";
    
    wait;

  end process;

end TB;
