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
    constant row_end : unsigned(11 downto 0) := x"1A4";
    constant x_axis : unsigned(11 downto 0) := x"0D9";
    constant y_axis : unsigned(11 downto 0) := x"13D";
    constant column_end : unsigned(11 downto 0) := x"26C";
    constant grid_cell_width : unsigned(7 downto 0) := x"3C";
    constant grid_cell_height : unsigned(7 downto 0) := x"32";
    constant hash_height : unsigned(7 downto 0) := x"03";
    constant hash_width : unsigned(7 downto 0) := x"01";
    constant horiz_hash_space : unsigned(7 downto 0) := x"0F";
    constant vert_hash_space : unsigned(7 downto 0) := x"0A";
    signal white : std_logic_vector(23 downto 0) := x"FFFFFF";
    signal green : std_logic_vector(23 downto 0) := x"00FF00";
    signal yellow : std_logic_vector(23 downto 0) := x"FFFF00";
    signal current_color : std_logic_vector(23 downto 0);
    signal background_color : std_logic_vector(23 downto 0) := x"000000";
    signal is_vertical_gridline : boolean;
    signal is_horizontal_gridline : boolean;
    signal is_trigger_time : boolean;
    signal is_trigger_volt : boolean;
    signal is_gridline : boolean;
    signal is_ch1 : std_logic;
    signal is_ch2 : std_logic;
    signal is_out_of_bounds : boolean;
    signal is_hash_mark : boolean;
    
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
    is_vertical_gridline <= ((column - column_start) mod grid_cell_width) = x"00";
    is_horizontal_gridline <= ((row - row_start) mod grid_cell_height) = x"00";
    is_gridline <= is_vertical_gridline or is_horizontal_gridline;
    is_ch1 <= ch1_enb and ch1;
    is_ch2 <= ch2_enb and ch2; 
    is_out_of_bounds <= (row < row_start) or (row > row_end) or (column < column_start) or (column > column_end);
    is_hash_mark <= (((row mod x_axis) < (2*hash_height)) and (((column - column_start) mod horiz_hash_space) = 0)) or (((column mod y_axis) < (2*hash_height)) and (((row - row_start) mod vert_hash_space) = 0));            
    is_trigger_volt <= (((row >= trigger_volt - 5) and (row <= trigger_volt + 5)) and column = column_start) or (((row >= trigger_volt - 4) and (row <= trigger_volt + 4)) and column = column_start + 1) or (((row >= trigger_volt - 3) and (row <= trigger_volt + 3)) and column = column_start + 2) or (((row >= trigger_volt - 2) and (row <= trigger_volt + 2)) and column = column_start + 3) or (((row >= trigger_volt - 1) and (row <= trigger_volt + 1)) and column = column_start + 4) or ((row = trigger_volt) and column = column_start); 
    is_trigger_time <= (((column >= trigger_time - 5) and (column <= trigger_time + 5)) and row = row_start) or (((column >= trigger_time - 4) and (column <= trigger_time + 4)) and row = row_start + 1) or (((column >= trigger_time - 3) and (column <= trigger_time + 3)) and row = row_start + 2) or (((column >= trigger_time - 2) and (column <= trigger_time + 2)) and row = row_start + 3) or (((column >= trigger_time - 1) and (column <= trigger_time + 1)) and row = row_start + 4) or ((column = trigger_time) and row = row_start);
    current_color <= yellow when is_trigger_volt else
    yellow when is_trigger_time else
    background_color when is_out_of_bounds else
    green when is_ch1 = '1' else
    yellow when is_ch2 = '1' else
    white when is_gridline else
    white when is_hash_mark else
    background_color;                

    r <= Get_Red(current_color);
    g <= Get_Green(current_color);
    b <= Get_Blue(current_color);
end scopeFace_arch;
