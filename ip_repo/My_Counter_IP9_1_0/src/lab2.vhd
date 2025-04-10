----------------------------------------------------------------------------------
-- Name:	Grantham Zimmerman
-- Date:	Spring 2025
-- File:    lab2.vhd
-- HW:	    Lab 2 
-- Pupr:	Lab 2 top file. 
--
-- Doc:	Sam Quick and I unsuccessfully verbally talked about trigger logic, reset logic, and worked on the datapath to see 
--if we could successfully get the monitor to show a scroll. This did not work. Lt Col Trimble showed me through a youtube video 
--how to debug my datapath to get simlive to show up. He also showed me how to deal with my fromADCX signals with a clock process 
--to ensure triggering showed up correctly.
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNIMACRO;
use UNIMACRO.vcomponents.all;	

 entity lab2 is
     Port ( clk : in  STD_LOGIC;
            reset_n : in  STD_LOGIC;
		    ac_mclk : out STD_LOGIC;
		    ac_adc_sdata : in STD_LOGIC;
		    ac_dac_sdata : out STD_LOGIC;
		    ac_bclk : out STD_LOGIC;
		    ac_lrclk : out STD_LOGIC;
            scl : inout STD_LOGIC;
            sda : inout STD_LOGIC;
		    tmds : out  STD_LOGIC_VECTOR (3 downto 0);
            tmdsb : out  STD_LOGIC_VECTOR (3 downto 0);
		    switch: in	STD_LOGIC_VECTOR(3 downto 0);
		    btn: in	STD_LOGIC_VECTOR(4 downto 0);
		    led : out std_logic_vector(7 downto 0));
 end lab2;

architecture behavior of lab2 is

	signal sw: std_logic_vector(2 downto 0);
	signal cw: std_logic_vector (2 downto 0);

component lab2_datapath is
    Port ( clk : in  STD_LOGIC;
	reset_n : in  STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    ac_bclk : out STD_LOGIC;
    ac_lrclk : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;    
    tmds : out  STD_LOGIC_VECTOR (3 downto 0);
    tmdsb : out  STD_LOGIC_VECTOR (3 downto 0);
    sw: out std_logic_vector(2 downto 0);
    cw: in std_logic_vector (2 downto 0);
    btn: in    STD_LOGIC_VECTOR(4 downto 0);
    switch: in    STD_LOGIC_VECTOR(3 downto 0);
    exWrAddr: in std_logic_vector(9 downto 0);
    exWen, exSel: in std_logic;
    Lbus_out, Rbus_out: out std_logic_vector(15 downto 0);
    exLbus, exRbus: in std_logic_vector(15 downto 0);
    flagQ: out std_logic;   
    flagClear: in std_logic); 
end component;
	
component lab2_fsm is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (2 downto 0);
           cw : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

begin


	
	datapath: lab2_datapath port map(
		clk => clk,
		reset_n => reset_n,
		ac_mclk => ac_mclk,
		ac_adc_sdata => ac_adc_sdata,
		ac_dac_sdata => ac_dac_sdata,
		ac_bclk => ac_bclk,
		ac_lrclk => ac_lrclk,
        scl => scl,
        sda => sda,
		tmds => tmds,
		tmdsb => tmdsb,
		sw => sw,
		cw => cw,
		btn => btn,
		switch => switch,
		exWrAddr => "0000000000",
		exWen => '0',
		exSel => switch(2),
		Lbus_out => OPEN,
		Rbus_out => OPEN,
		exLbus => "0000000000000000",
		exRbus => "0000000000000000",		
		flagQ => led(4),
		flagClear => '0');
		
			  
	control: lab2_fsm port map( 
		clk => clk,
		reset_n => reset_n,
		sw => sw,
		cw => cw);

end behavior;
