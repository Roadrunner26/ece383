----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2025 10:08:05 PM
-- Design Name: 
-- Module Name: lec11_cu - Behavioral
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

entity lec11_cu is
	Port(	clk: in  STD_LOGIC;
			reset : in  STD_LOGIC;
			kbClk: in std_logic;
			cw: out STD_LOGIC_VECTOR(3 downto 0);
			sw: in STD_LOGIC;
			busy: out std_logic);
end lec11_cu;

architecture Behavioral of lec11_cu is
    signal w_busy : std_logic;
    type state_type is (clearBusy, waitStart, setBusy, clear, compare, wait1, shift, wait0, inc, scan_out);
    	signal state: state_type;
begin

   state_process: process(clk)
	 begin
		if (rising_edge(clk)) then
            case state is
                when clearBusy => 
                    cw(3) <= '0';
                    w_busy <= '0';
                    state <= waitStart;
                when waitStart => 
                   if (kbclk = '0') then state <= setBusy; end if;
                when setBusy =>
                    w_busy <= '1';
                   state <= clear;
                when clear =>
                   cw(1 downto 0) <= "11";
                   state <= compare;
                when compare =>
                    if(sw = '1') then state <= scan_out;
                    else state <= wait1; end if;
                when wait1 =>
                    if (kbclk = '0') then state <= shift; end if;
                when shift =>
                    cw(2) <= '1';
                    state <= wait0;
                when wait0 =>
                    if(kbclk = '0') then 
                        cw(2) <= '0';
                        state <= inc; end if;
                when inc =>
                    cw(1 downto 0) <= "01";
                    state <= compare;
                when scan_out =>
                    cw(3) <= '1';
                    cw(1 downto 0) <= "00";
                    state <= clearBusy;				
            end case;
        end if;
	end process;
    busy <= w_busy;
end Behavioral;
