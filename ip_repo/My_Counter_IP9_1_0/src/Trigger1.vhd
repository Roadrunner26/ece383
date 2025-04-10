----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2025 04:07:02 PM
-- Design Name: 
-- Module Name: Trigger1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Trigger is
    generic(
        UpperEdge : integer;
        LowerEdge : integer;
        start : integer
    );
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        firstBtn : in std_logic;
        secondBtn : in std_logic;
        outTrigger : out unsigned (9 downto 0)
    );
end Trigger;

architecture Behavioral of Trigger is

	signal w_btnFirst, w_btnSecond : std_logic;
	signal btn_pressed : std_logic := '0';
    signal triggered : unsigned(9 downto 0);
    
component button_debounce is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			button: in STD_LOGIC;
			action: out STD_LOGIC);
end component;

begin

    btnIncrease : button_debounce
    port map(
        clk => clk,
        reset => reset_n,
        button => firstBtn,
        action => w_btnFirst
    );
    btnDecrease : button_debounce
    port map(
        clk => clk,
        reset => reset_n,
        button => secondBtn,
        action => w_btnSecond
    );
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0') then
                outTrigger <= to_unsigned(start, 10);
		    else
                if(w_btnFirst = '1' and (triggered >= (lowerEdge + 8)) and (btn_pressed = '0')) then
                    btn_pressed <= '1';
                    triggered <= triggered - 4;
                elsif(w_btnSecond = '1' and (triggered <= (UpperEdge - 8)) and (btn_pressed = '0')) then
                    btn_pressed <= '1';
                    triggered <= triggered + 4;
                end if;
                if(w_btnFirst = '0' and w_btnSecond = '0') then
                    btn_pressed <= '0';
                end if;

            end if;
        end if;
    end process;
    
    outTrigger <= triggered;
    


end Behavioral;
