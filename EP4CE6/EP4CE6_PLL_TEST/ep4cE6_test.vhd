library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ep4cE6_test is
	PORT(
			sys_clk : IN STD_LOGIC;


			LED	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);

end;

architecture bhv of ep4cE6_test is

SIGNAL cnt : STD_LOGIC_VECTOR(27 DOWNTO 0):=(OTHERS => '0');
SIGNAL LED_reg : STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

PROCESS(sys_clk)

BEGIN

IF sys_clk'EVENT AND sys_clk = '1' THEN
	
	cnt <= cnt + '1';
	
	CASE cnt(23 DOWNTO 21) IS
	WHEN B"000" => LED_reg <= X"11";
	WHEN B"001" => LED_reg <= X"22";
	WHEN B"010"=> LED_reg <= X"44";
	WHEN B"011" => LED_reg <= X"88";
	WHEN B"100" => LED_reg <= X"CC";
	WHEN B"101" => LED_reg <= X"EE";
	WHEN B"110" => LED_reg <= X"FF";
	WHEN OTHERS => LED_reg <= X"00";
	END CASE;
   
END IF;

END PROCESS;

LED <= LED_reg;


end bhv;