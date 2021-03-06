library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl1 is
  generic (
    WIDTH : positive := 16);
  port (
	 clk    : in  std_logic;
    rst    : in  std_logic;
    go     : in  std_logic;
    done   : out std_logic;
    x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
    output : out std_logic_vector(WIDTH-1 downto 0));
end entity;


architecture FSM of ctrl1 is

COMPONENT datapath1
		generic (
    WIDTH : positive := 16);
  port (
	 x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
    clk    : in  std_logic;
	 x_sel    : in  std_logic;
	 y_sel    : in  std_logic;
    x_en    : in  std_logic;
	 y_en    : in  std_logic;
	 output_en    : in  std_logic;
	 x_lt_y    : inout  std_logic;
	 x_ne_y    : out  std_logic;
    output : out std_logic_vector(WIDTH-1 downto 0));
END COMPONENT ;
--control signals for the datapath
signal x_sel, y_sel, x_en, y_en, output_en, x_lt_y, x_ne_y : std_logic;
TYPE State_type IS (inld, calc, ldsubx, ldsuby, ldoutput, outs);  -- Define the states
	SIGNAL state : State_Type;    -- Create a signal that uses 

begin  

-- Change next line to use the original datapath
datapath : entity work.datapath1(FSM_D1)
        generic map (
            WIDTH => WIDTH) -- 50 MHZ to 1Khz
        port map (
            x => x,
				y => y,
				clk => clk,
				x_sel => x_sel,
				y_sel => y_sel,
				x_en => x_en,
				y_en => y_en,
				output_en => output_en,
				x_lt_y => x_lt_y,
				x_ne_y => x_ne_y,
				output => output);
				
process(clk)
begin
if (rst = '1') then            -- Upon reset
	state <= inld;
elsif(clk'event and clk = '1' and go = '1') then
case state is
		WHEN inld => 
			IF go='1' THEN 
				state <= calc; 
			END IF; 
 
		WHEN ldsubx => 
			IF go='1' THEN 
				state <= calc; 
			END IF; 
 
		WHEN ldsuby => 
			IF go='1' THEN 
				state <= calc; 
			END IF; 
 
		WHEN calc=> 
			IF go='1' THEN 
				IF x_lt_y = '1' THEN 
					state <= ldsuby;
				ELSIF x_ne_y = '1' THEN
					state <= ldsubx;
				ELSE 
					state <= ldoutput; 
				END IF; 
			END IF;
			
		WHEN ldoutput => 
			IF go='1' THEN 
				state <= outs; 
			END IF;	
			
		WHEN outs => 
			IF go='1' THEN 
				state <= inld; 
			END IF;	
		
		WHEN others =>
			state <= inld;
	END CASE; 
end if;
end process;
x_en <= '1' WHEN (state=ldsubx or state=inld) ELSE '0';
y_en <= '1' WHEN (state=ldsuby or state=inld) ELSE '0';
y_sel <= '1' WHEN (state=ldsuby or (state=calc and x_lt_y = '1')) ELSE '0';
x_sel <= '1' WHEN (state=ldsubx or (state=calc and x_lt_y = '0' and x_ne_y = '1')) ELSE '0';
output_en <= '1' WHEN (state=ldoutput) ELSE '0';
done <= '1' WHEN state=outs ELSE '0';
end FSM;
