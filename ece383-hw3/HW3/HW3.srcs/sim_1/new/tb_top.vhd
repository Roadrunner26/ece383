----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/14/2025 09:40:00 PM
-- Design Name: 
-- Module Name: tb_top - Behavioral
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top is
    -- Test benches do not have ports
end tb_top;

architecture Behavioral of tb_top is
    -- Component declaration for the Unit Under Test (UUT)
    component top
        port(
            sw : in std_logic_vector(7 downto 0);
            led : out std_logic
        );
    end component;

    -- Signals to connect to the UUT
    signal sw : std_logic_vector(7 downto 0);
    signal led : std_logic;

begin
    -- Instantiate the UUT
    uut: top
        port map(
            sw => sw,
            led => led
        );

    -- Test process
    stim_proc: process
    begin
        -- Test case 1: sw = 17 (divisible by 17)
        sw <= std_logic_vector(to_unsigned(17, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 1 failed: sw = 17, led should be '1'" severity error;
    
        -- Test case 2: sw = 34 (divisible by 17)
        sw <= std_logic_vector(to_unsigned(34, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 2 failed: sw = 34, led should be '1'" severity error;
    
        -- Test case 3: sw = 18 (not divisible by 17)
        sw <= std_logic_vector(to_unsigned(18, 8));
        wait for 10 ns;
        assert led = '0'
            report "Test case 3 failed: sw = 18, led should be '0'" severity error;
    
        -- Test case 4: sw = 0 (divisible by 17)
        sw <= std_logic_vector(to_unsigned(0, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 4 failed: sw = 0, led should be '1'" severity error;
    
        -- Test case 5: sw = 51 (divisible by 17)
        sw <= std_logic_vector(to_unsigned(51, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 5 failed: sw = 51, led should be '1'" severity error;
    
        -- Test case 6: sw = 68 (divisible by 17)
        sw <= std_logic_vector(to_unsigned(68, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 6 failed: sw = 68, led should be '1'" severity error;
    
        -- Test case 7: sw = 85 (divisible by 17)
        sw <= std_logic_vector(to_unsigned(85, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 7 failed: sw = 85, led should be '1'" severity error;
    
        -- Test case 8: sw = 1 (not divisible by 17)
        sw <= std_logic_vector(to_unsigned(1, 8));
        wait for 10 ns;
        assert led = '0'
            report "Test case 8 failed: sw = 1, led should be '0'" severity error;
    
        -- Test case 9: sw = 255 (not divisible by 17, max 8-bit value)
        sw <= std_logic_vector(to_unsigned(255, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 9 failed: sw = 255, led should be '1'" severity error;
    
        -- Test case 10: sw = 136 (divisible by 17)
        sw <= std_logic_vector(to_unsigned(136, 8));
        wait for 10 ns;
        assert led = '1'
            report "Test case 10 failed: sw = 136, led should be '1'" severity error;
    
        -- Finish simulation
        wait;
    end process;
    

end Behavioral;
