----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/10/2025 09:47:13 AM
-- Design Name: 
-- Module Name: hw2sim - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_hw2 is
-- Testbench has no ports
end tb_hw2;

architecture Behavioral of tb_hw2 is

    -- Component declaration for the Unit Under Test (UUT)
    component hw2
        port(
            scancode : in std_logic_vector(7 downto 0);
            decoded_value : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Testbench signals
    signal scancode_tb : std_logic_vector(7 downto 0) := (others => '0');
    signal decoded_value_tb : std_logic_vector(3 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: hw2
        port map (
            scancode => scancode_tb,
            decoded_value => decoded_value_tb
        );

    -- Test process
    process
    begin
        -- Test case 1: scancode = x"45", decoded_value should be x"0"
        scancode_tb <= x"45";
        wait for 10 ns;
        assert decoded_value_tb = x"0"
            report "Test case 1 failed: scancode = x45" severity error;

        -- Test case 2: scancode = x"16", decoded_value should be x"1"
        scancode_tb <= x"16";
        wait for 10 ns;
        assert decoded_value_tb = x"1"
            report "Test case 2 failed: scancode = x16" severity error;

        -- Test case 3: scancode = x"1E", decoded_value should be x"2"
        scancode_tb <= x"1E";
        wait for 10 ns;
        assert decoded_value_tb = x"2"
            report "Test case 3 failed: scancode = x1E" severity error;

        -- Test case 4: scancode = x"26", decoded_value should be x"3"
        scancode_tb <= x"26";
        wait for 10 ns;
        assert decoded_value_tb = x"3"
            report "Test case 4 failed: scancode = x26" severity error;

        -- Test case 5: scancode = x"25", decoded_value should be x"4"
        scancode_tb <= x"25";
        wait for 10 ns;
        assert decoded_value_tb = x"4"
            report "Test case 5 failed: scancode = x25" severity error;

        -- Test case 6: scancode = x"2E", decoded_value should be x"5"
        scancode_tb <= x"2E";
        wait for 10 ns;
        assert decoded_value_tb = x"5"
            report "Test case 6 failed: scancode = x2E" severity error;

        -- Test case 7: scancode = x"36", decoded_value should be x"6"
        scancode_tb <= x"36";
        wait for 10 ns;
        assert decoded_value_tb = x"6"
            report "Test case 7 failed: scancode = x36" severity error;

        -- Test case 8: scancode = x"3D", decoded_value should be x"7"
        scancode_tb <= x"3D";
        wait for 10 ns;
        assert decoded_value_tb = x"7"
            report "Test case 8 failed: scancode = x3D" severity error;

        -- Test case 9: scancode = x"3E", decoded_value should be x"8"
        scancode_tb <= x"3E";
        wait for 10 ns;
        assert decoded_value_tb = x"8"
            report "Test case 9 failed: scancode = x3E" severity error;

        -- Test case 10: scancode = x"FF", no match expected (decoded_value should be x"9")
        scancode_tb <= x"46";
        wait for 10 ns;
        assert decoded_value_tb = x"9"
            report "Test case 10 failed: scancode = x46" severity error;

        -- End of simulation
        report "All test cases passed" severity note;
        wait;
    end process;

end Behavioral;
