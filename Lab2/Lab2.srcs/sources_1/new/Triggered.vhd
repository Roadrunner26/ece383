----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2025 07:37:38 PM
-- Design Name: 
-- Module Name: Triggered - Behavioral
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
        lowerEdge : integer;
        start : integer
    );
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        firstBtn : in std_logic;
        scndBtn : in std_logic;
        trigger_out : out unsigned(9 downto 0)
    );
end Trigger;

architecture Behavioral of Trigger is
    signal btn_up_pressed, btn_down_pressed : std_logic := '0';

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0') then
                --Something here
		    else
                if(firstBtn = '1' and btn_up_pressed = '0') then
                    btn_up_pressed <= '1';
                    start <= start - 4;
                elsif(scndBtn = '1' and btn_down_pressed = '0') then
                    btn_down_pressed <= '1';
                    start <= start + 4;
                end if;
                if(firstBtn = '0') then
                    btn_up_pressed <= '0';
                end if;
                if(scndBtn = '0') then
                    btn_down_pressed <= '0';
                end if;
            end if;
        end if;
    end process;


end Behavioral;
