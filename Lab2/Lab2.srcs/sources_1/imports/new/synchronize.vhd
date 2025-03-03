----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2025 08:15:53
-- Design Name: 
-- Module Name: synchronize - Behavioral
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

entity synchronize is
port(
    clk : in std_logic;
    reset_n : in std_logic;
    row : in unsigned(9 downto 0);
    column : in unsigned(9 downto 0);
    v_blank : out std_logic;
    h_blank : out std_logic;
    v_sync : out std_logic;
    h_sync : out std_logic);
end synchronize; 

architecture Behavioral of synchronize is

begin

    h_sync <=  '1' when reset_n = '0' else
    '1' when column < 656 else
    '1' when column > 751 else
    '0';
    
    v_sync <= '1' when reset_n = '0' else
    '1' when row < 490 else
    '1' when row > 491 else
    '0';
    
    h_blank <= '0' when column < 640 else
    '1';
    
    v_blank <= '0' when row < 480 else
    '1';
    


end Behavioral;
