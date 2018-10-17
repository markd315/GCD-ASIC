library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath1 is
  generic (
    WIDTH : natural := 16);
  port (
	 x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
	 clk      : in  std_logic;
	 x_sel      : in  std_logic := '0';
	 y_sel     : in  std_logic := '0';
	 x_en      : in  std_logic := '0';
	 y_en      : in  std_logic := '0';
	 output_en      : in  std_logic := '0';
	 x_lt_y      : inout  std_logic;
	 x_ne_y      : out  std_logic;
    output  : out std_logic_vector(WIDTH-1 downto 0));
end entity;


architecture FSM_D1 of datapath1 is

COMPONENT genmux
		generic (
            WIDTH : natural := WIDTH
            );
		port(A, B : in std_logic_vector(WIDTH-1 downto 0);
			S : in std_logic;
			Y : out std_logic_vector(WIDTH-1 downto 0));
END COMPONENT ;
COMPONENT cmp
		generic (
            WIDTH : natural := WIDTH
            );
		port(X, Y : in std_logic_vector(WIDTH-1 downto 0);
			x_lt_y, x_ne_y : out std_logic);
END COMPONENT ;
COMPONENT regis
		generic (
            WIDTH : natural := WIDTH
            );
		port(i : in std_logic_vector(WIDTH-1 downto 0);
			o : out std_logic_vector(WIDTH-1 downto 0);
			en, clk : in std_logic);
END COMPONENT ;
COMPONENT subtr
		generic (
            WIDTH :natural := WIDTH
            );
		port(A, B : in std_logic_vector(WIDTH-1 downto 0);
			output : out std_logic_vector(WIDTH-1 downto 0));
END COMPONENT ;
signal muxedX : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal muxedY : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal regX : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal regY : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal subX : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal subY : std_logic_vector(WIDTH-1 downto 0) := (others => '0');

begin  -- FSM_D1
xmux : genmux generic map (WIDTH => WIDTH) 
        port map (x, subX, x_sel, muxedX);
ymux : genmux generic map (WIDTH => WIDTH) 
        port map (A => y, B=> subY, S=> y_sel, Y=> muxedY);
xreg : regis generic map (WIDTH => WIDTH) 
        port map (i => muxedX, en  => x_en,o => regX, clk=> clk);
yreg : regis generic map (WIDTH => WIDTH) 
        port map (i => muxedY, en  => y_en,o => regY, clk=> clk);
cmprtr : cmp generic map (WIDTH => WIDTH) 
        port map (X => regX, Y => regY, x_lt_y => x_lt_y, x_ne_y  => x_ne_y);
xsub : subtr generic map (WIDTH => WIDTH) 
        port map (A => regX, B => regY, output  => subX);
ysub : subtr generic map (WIDTH => WIDTH) 
        port map (A => regY, B => regX, output  => subY);
outreg : regis generic map (WIDTH => WIDTH) 
        port map (i => regX, o => output, en  => output_en, clk=> clk);
end FSM_D1;

architecture FSM_D2 of datapath1 is
COMPONENT genmux
		generic (
            WIDTH : natural := WIDTH
            );
		port(A, B : in std_logic_vector(WIDTH-1 downto 0);
			S : in std_logic;
			Y : out std_logic_vector(WIDTH-1 downto 0));
END COMPONENT ;
COMPONENT cmp
		generic (
            WIDTH : natural := WIDTH
            );
		port(X, Y : in std_logic_vector(WIDTH-1 downto 0);
			x_lt_y, x_ne_y : out std_logic);
END COMPONENT ;
COMPONENT regis
		generic (
            WIDTH : natural := WIDTH
            );
		port(i : in std_logic_vector(WIDTH-1 downto 0);
			o : out std_logic_vector(WIDTH-1 downto 0);
			en, clk : in std_logic);
END COMPONENT ;
COMPONENT subtr
		generic (
            WIDTH :natural := WIDTH
            );
		port(A, B : in std_logic_vector(WIDTH-1 downto 0);
			output : out std_logic_vector(WIDTH-1 downto 0));
END COMPONENT ;
signal muxedX : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal muxedY : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal regX : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal regY : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal dynamicGreater : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal dynamicLess : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
signal subOnly : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
begin  -- FSM_D2
xmux : genmux generic map (WIDTH => WIDTH) 
        port map (x, subOnly, x_sel, muxedX);
ymux : genmux generic map (WIDTH => WIDTH)
        port map (A => y, B=> subOnly, S=> y_sel, Y=> muxedY);
xreg : regis generic map (WIDTH => WIDTH) 
        port map (i => muxedX, en  => x_en,o => regX, clk=> clk);
yreg : regis generic map (WIDTH => WIDTH) 
        port map (i => muxedY, en  => y_en,o => regY, clk=> clk);
cmprtr : cmp generic map (WIDTH => WIDTH) 
        port map (X => regX, Y => regY, x_lt_y => x_lt_y, x_ne_y  => x_ne_y);
		  
dynamicGreater <= regY when x_lt_y = '1' else regX;
dynamicLess <= regX when x_lt_y = '1' else regY;
  
sub : subtr generic map (WIDTH => WIDTH) 
        port map (A => dynamicGreater, B => dynamicLess, output  => subOnly);

--We have to dynamically flip the sub inputs depending on x_lt_y
		  
--ysub : subtr generic map (WIDTH => WIDTH) 
--        port map (A => regY, B => regX, output  => subY);
outreg : regis generic map (WIDTH => WIDTH) 
        port map (i => regX, o => output, en  => output_en, clk=> clk);
 
end FSM_D2;
