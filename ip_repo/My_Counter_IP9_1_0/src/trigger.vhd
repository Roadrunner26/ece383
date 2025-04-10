----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2025 10:34:16 AM
-- Design Name: 
-- Module Name: trigger - Behavioral
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

entity trigger is
    clk : in std_logic;
    btn : in std_logic_vector(3 downto 0);
    trigger_time: in unsigned(9 downto 0);
	trigger_volt: in unsigned (9 downto 0)
    
end trigger;

architecture Behavioral of trigger is

	signal btn_up_pressed : std_logic := '0';
    signal btn_down_pressed : std_logic := '0';
	signal btn_right_pressed : std_logic := '0';
	signal btn_left_pressed : std_logic := '0';

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if(btn(0) = '1' and btn_up_pressed = '0') then
                btn_up_pressed <= '1';
                trigger_volt <= trigger_volt - 1;
            elsif(btn(2) = '1' and btn_down_pressed = '0') then
                btn_down_pressed <= '1';
                trigger_volt <= trigger_volt + 1;
            end if;
            if(btn(1) = '1' and btn_left_pressed = '0') then
                btn_left_pressed <= '1';
                trigger_time <= trigger_time - 1;
            elsif(btn(3) = '1' and btn_right_pressed = '0') then
                btn_right_pressed <= '1';
                trigger_time <= trigger_time + 1;
            end if;
            if(btn(0) = '0') then
                btn_up_pressed <= '0';
            end if;
            if(btn(2) = '0') then
                btn_down_pressed <= '0';
            end if;
            if(btn(1) = '0') then
                btn_left_pressed <= '0';
            end if;
            if(btn(3) = '0') then
                btn_right_pressed <= '0';
            end if;
        end if;
    end process;


end Behavioral;
