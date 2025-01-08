
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity hw1 is
    port( 
	i_0 : in std_logic;
	i_1 : in std_logic;
	i_2 : in std_logic;
	i_3 : in std_logic;


	o_0 : out std_logic;
	o_1 : out std_logic
  );
end hw1;

architecture hw1_arch of hw1 is 

  
begin
	
	o_0 <= i_3 or (i_2' and i_1);
	o_1 <= i_3 or (i_3' and i_2);
	       
	---------------------------------------------------------------	
end hw1_arch;
