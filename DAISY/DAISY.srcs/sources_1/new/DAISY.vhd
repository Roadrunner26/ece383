----------------------------------------------------------------------------------
-- DAISY State machine example.
-- This entity implements a state machine which processes cows
-- by having one cow at a time enter through the first gate, scanning the cow
-- via RFID, then releasing the cow through the second gate.  If the cow does 
-- not leave the holding pen after 30 seconds, a 3-second burst of air is used
-- to encourage the cow to leave the pen. This is repeated every 30 seconds until
-- the cow leaves the pen.  Once the pen is empty the next cow can be processed.
--
-- Lt Col James Trimble, 29-Jan-2025
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.daisy_pkg.ALL;

entity DAISY is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (2 downto 0);
           cw : out STD_LOGIC_VECTOR (4 downto 0));
end DAISY;

architecture DAISY_arch of DAISY is

    signal state: daisy_state_type;
    signal cow_is_present, RFID_is_scanned, time_is_expired: boolean;
    signal ctrl: control_word_type := CONTROL_DEFAULT;
    
begin
    cow_is_present <= true when sw(COW_PRESENT) = '1' else false;
    RFID_is_scanned <= true when sw(RFID_SCANNED) = '1' else false;
    time_is_expired <= true when sw(TIMER_EXPIRED) = '1' else false;
    
    -- Next State: Move to the next state based on the status word inputs and the current state
    FSM_process: process(clk)
        begin
            if (rising_edge(clk)) then
                if (reset = '0') then
                    state <= WaitForCowEnter;
                else
                    case state is  
                        when WaitForCowEnter =>
                            if (cow_is_present) then state <= WaitForRFID; end if;
                        when WaitForRFID =>
                            if (RFID_is_scanned) then state <= SetTimer30s; end if;
                        when SetTimer30s =>
                            state <= WaitForCowExit;
                        when WaitForCowExit =>
                            if (not cow_is_present) then state <= WaitForCowEnter;
                            elsif (time_is_expired and cow_is_present) then state <= SetTimer3s; end if;
                        when SetTimer3s =>
                            state <= AirBurst;
                        when AirBurst =>
                            if (time_is_expired) then state <= SetTimer30s; end if;
                        when others =>
                            state <= WaitForCowEnter;
                    end case;
                end if;
            end if;
        end process;
        
    -- Output: Set control word signals to control gates 1&2, the timer, and the air cannon
    with state select
        ctrl <= (gate1 => GATE_OPENED, gate2 => GATE_CLOSED, timer => TIMER_STOPPED, air => AIR_OFF) when WaitForCowEnter,
            (gate1 => GATE_CLOSED, gate2 => GATE_CLOSED, timer => TIMER_STOPPED, air => AIR_OFF) when WaitForRFID,
            (gate1 => GATE_CLOSED, gate2 => GATE_OPENED, timer => TIMER_SET_30S, air => AIR_OFF) when SetTimer30s,
            (gate1 => GATE_CLOSED, gate2 => GATE_OPENED, timer => TIMER_RUN, air => AIR_OFF) when WaitForCowExit,
            (gate1 => GATE_CLOSED, gate2 => GATE_OPENED, timer => TIMER_SET_3S, air => AIR_OFF) when SetTimer3s,
            (gate1 => GATE_CLOSED, gate2 => GATE_OPENED, timer => TIMER_RUN, air => AIR_BURST) when AirBurst,
            CONTROL_DEFAULT when others;

    cw <= Control_To_Vector(ctrl);

end DAISY_arch;
