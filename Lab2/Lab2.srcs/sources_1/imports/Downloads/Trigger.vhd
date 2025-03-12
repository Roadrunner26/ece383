----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/29/2025 08:59:49 AM
-- Design Name: 
-- Module Name: Trigger - Behavioral
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
           start : integer
            );
    Port ( 
           clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           btn_1 : in STD_LOGIC;
           btn_2 : in STD_LOGIC;
           o_trigger : out unsigned (9 downto 0)
          );
end Trigger;

architecture Behavioral of Trigger is

signal w_btn_tot : integer := 0;


begin

w_btn_tot <= w_btn_tot + 3 when (btn_1 = '1') else
             w_btn_tot - 3 when (btn_2 = '1') else
             0 when reset_n = '0'; 
             

o_trigger <= TO_UNSIGNED(start + w_btn_tot, 10);












end Behavioral;
