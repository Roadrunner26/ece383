----------------------------------------------------------------------------------
-- Header section with name, date, and file description
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity scopeFace is
    Port ( row : in  unsigned(9 downto 0);
           column : in  unsigned(9 downto 0);
		   trigger_volt: in unsigned (9 downto 0);
		   trigger_time: in unsigned (9 downto 0);
           r : out  std_logic_vector(7 downto 0);
           g : out  std_logic_vector(7 downto 0);
           b : out  std_logic_vector(7 downto 0);
		   ch1: in std_logic;
		   ch1_enb: in std_logic;
		   ch2: in std_logic;
		   ch2_enb: in std_logic);
end scopeFace;

architecture scopeface_arch of scopeface is


begin

               

end scopeFace_arch;
