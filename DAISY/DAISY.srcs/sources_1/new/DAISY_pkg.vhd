library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL; 

package DAISY_pkg is
    -- Define the states
    type daisy_state_type is (WaitForCowEnter, WaitForRFID, SetTimer30s, WaitForCowExit, SetTimer3s, AirBurst);
    
    -- Define constants for control word bit positions
    constant GATE1 : integer := 4;
    constant GATE2 : integer := 3;
    constant TIMER_MSB : integer := 2;
    constant TIMER_LSB : integer := 1;
    constant CONTROL_AIR : integer := 0;    
    
    -- Define control word structure
    type control_word_type is record
        gate1      : std_logic;
        gate2      : std_logic;
        timer      : std_logic_vector(1 downto 0);
        air : std_logic;
    end record;
    
    -- Default control word value (all signals off)
    constant CONTROL_DEFAULT : control_word_type := ('0', '0', "00", '0');
    
    -- Define named control words for clarity
    constant GATE_OPENED    : std_logic := '1';
    constant GATE_CLOSED    : std_logic := '0';
    constant TIMER_STOPPED    : std_logic_vector(1 downto 0) := "00";
    constant TIMER_SET_30S : std_logic_vector(1 downto 0) := "01";
    constant TIMER_SET_3S  : std_logic_vector(1 downto 0) := "10";
    constant TIMER_RUN     : std_logic_vector(1 downto 0) := "11";
    constant AIR_BURST      : std_logic := '1';
    constant AIR_OFF      : std_logic := '0';
    
    -- Function declaration for Control_To_Vector function which converts a control record to a std_logic_vector
    function Control_To_Vector(ctrl: control_word_type) return std_logic_vector;
    
    -- Define constants for status word bit positions
    constant RFID_SCANNED : integer := 2;
    constant COW_PRESENT : integer := 1;
    constant TIMER_EXPIRED : integer := 0;
    
end package DAISY_pkg;

package body DAISY_pkg is
    
    -- To_Vector function which converts a control record to a std_logic_vector
    function Control_To_Vector(ctrl: control_word_type) return std_logic_vector is
    begin
        return ctrl.gate1 & ctrl.gate2 & ctrl.timer & ctrl.air;
    end function;

end package body DAISY_pkg;