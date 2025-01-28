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

architecture scopeFace_arch of scopeFace is
    constant column_start : unsigned(7 downto 0) := x"14";
    constant row_start : unsigned(7 downto 0) := x"14";
    constant grid_cell_width : unsigned(7 downto 0) := x"3C";
    constant grid_cell_height : unsigned(7 downto 0) := x"32";
    signal white : std_logic_vector(23 downto 0) := x"FFFFFF";
    signal green : std_logic_vector(23 downto 0) := x"00FF00";
    signal yellow : std_logic_vector(23 downto 0) := x"FFFF00";
    signal current_color : std_logic_vector(23 downto 0);
    signal background_color : std_logic_vector(23 downto 0) := x"000000";
    signal is_vertical_gridline : boolean;
    signal is_horizontal_gridline : boolean;
    signal is_trigger : boolean;
    signal is_gridline : boolean;
    signal is_ch1 : boolean;
    signal is_ch2 : boolean;
    
    function Get_Red(rgb : std_logic_vector(23 downto 0)) return std_logic_vector is
    begin
        return rgb(23 downto 16);
    end function;
    function Get_Green(rgb : std_logic_vector(23 downto 0)) return std_logic_vector is
    begin
        return rgb(15 downto 8);
    end function;
    function Get_Blue(rgb : std_logic_vector(23 downto 0)) return std_logic_vector is
    begin
        return rgb(7 downto 0);
    end function;  

begin     
    is_vertical_gridline <= (column - (column_start mod grid_cell_width)) = x"00";
    is_horizontal_gridline <= (row - (row_start mod grid_cell_height)) = x"00";
    is_gridline <= is_vertical_gridline or is_horizontal_gridline;
    is_ch1 <= ch1 = '1';
    is_ch2 <= ch2 = '1';                
    current_color <= yellow when is_trigger else
    white when is_gridline else
    green when is_ch1 else
    yellow when is_ch2 else
    background_color;                

    r <= Get_Red(current_color);
    g <= Get_Green(current_color);
    b <= Get_Blue(current_color);
end scopeFace_arch;
