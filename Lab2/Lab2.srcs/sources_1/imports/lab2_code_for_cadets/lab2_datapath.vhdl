----------------------------------------------------------------------------------
-- Name:	Template by George York (modified from Jeff Falkinburg)
-- Date:	Spring 2023
-- File:    lab2_datapath.vhdl
-- HW:	    Lab 2 
-- Pupr:	Lab 2 Datapath takes the blue audio jack input using the National 
-- 		Semiconductor LM450 AC'97 multi-channel audio codec and translates it 
--			for storage in BRAM and display on the oscope display.  
--
-- Doc:	Adapted from Dr Coulston's Lab exercise
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
use IEEE.NUMERIC_STD.ALL;
library UNIMACRO;
use UNIMACRO.vcomponents.all;	
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity lab2_datapath is
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
end lab2_datapath;

architecture Behavioral of lab2_datapath is

    signal sim_live: std_logic;
    signal ready : std_logic;
	signal L_bus_in, R_bus_in, L_bus_out, R_bus_out: std_logic_vector(17 downto 0);	    
    signal triggerVolt, triggerTime, writeCntr: unsigned (9 downto 0);
    signal row, column: unsigned(9 downto 0);
    signal ch1, ch2, reset: std_logic;
    signal readL, readR : std_logic_vector(15 downto 0);
    signal Q, D, G, L : std_logic;
    signal tr_volt, tr_time : std_logic;
    signal ctrl : std_logic;
    signal sw_sig : std_logic_vector(2 downto 0);
    signal w_wrEnbMux : std_logic;
    signal w_WrAddrMux : std_logic_vector(9 downto 0);
    signal w_DinMuxL, w_DinMuxR : std_logic_vector(15 downto 0);
    signal btn_up_pressed : std_logic := '0';
    signal btn_down_pressed : std_logic := '0';
	signal btn_right_pressed : std_logic := '0';
	signal btn_left_pressed : std_logic := '0';
	signal w_D0WasteL, w_D0WasteR : std_logic_vector(5 downto 0);

    constant offset : unsigned(9 downto 0) := to_unsigned(92, 10);
    
    
    
    
component WrAddrMux is
    port(
        clk : in std_logic;
        writeCntr : in unsigned(9 downto 0);
        exWrAddr : in std_logic_vector(9 downto 0);
        exSel : in std_logic;
        result : out std_logic_vector(9 downto 0)
    );
end component;

component DinMux is
    port(
        clk : in std_logic;
        busIn : in std_logic_vector(15 downto 0);
        exBus : in std_logic_vector(15 downto 0);
        exSel : in std_logic;
        result : out std_logic_vector(15 downto 0)
    );
end component;

component wrEnbMux is
    port(
        clk : in std_logic;
        cw : in std_logic;
        exWen : in std_logic;
        exSel : in std_logic;
        result : out std_logic
    );
end component;

    
    
    
	
component video is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           tmds : out  STD_LOGIC_VECTOR (3 downto 0);
           tmdsb : out  STD_LOGIC_VECTOR (3 downto 0);
			  trigger_time: in unsigned(9 downto 0);
			  trigger_volt: in unsigned (9 downto 0);
			  row: out unsigned(9 downto 0);
			  column: out unsigned(9 downto 0);
			  ch1: in std_logic;
			  ch1_enb: in std_logic;
			  ch2: in std_logic;
			  ch2_enb: in std_logic);
end component;
	
component Audio_Codec_Wrapper 
    Port ( clk : in STD_LOGIC;
        reset_n : in STD_LOGIC;
        ac_mclk : out STD_LOGIC;
        ac_adc_sdata : in STD_LOGIC;
        ac_dac_sdata : out STD_LOGIC;
        ac_bclk : out STD_LOGIC;
        ac_lrclk : out STD_LOGIC;
        ready : out STD_LOGIC;
        L_bus_in : in std_logic_vector(17 downto 0); -- left channel input to DAC
        R_bus_in : in std_logic_vector(17 downto 0); -- right channel input to DAC
        L_bus_out : out  std_logic_vector(17 downto 0); -- left channel output from ADC
        R_bus_out : out  std_logic_vector(17 downto 0); -- right channel output from ADC
        scl : inout STD_LOGIC;
        sda : inout STD_LOGIC;
        sim_live : in STD_LOGIC);   --  '0' simulate audio; '1' live audio
end component;
	
component FlagRegister is
    port(
        clk : in std_logic;
        reset_n : in std_logic;
        set : in std_logic;
        clear : in std_logic;
        Q : in std_logic;
        flagQ : out std_logic
    );
end component;


begin

-- Here are some Tests, progressively replacing the comparator in the block diagram between BRAM and Video
-- TEST 1:  draw a horizontal yellow line (ch1) just above the center grid line (DC or zero volts)
--          and a horizontal green line (ch2) just below the center grid line
--          Disconnect or comment out BRAM code at the bottom of the file
	--ch1 <= '1' when (218 = row) else '0';		
    --ch2 <= '1' when (222 = row) else '0';       

-- TEST 2: This is a good test to calibrate your DC offcet, attempting to center the waveform on the center grid line
--    If grabbing  9-bit samples from BRAM:   offset = 256 - 220 = ______
--    If grabbing 10-bit samples from BRAM:   offset = 512 - 220 = ______
--          Disconnect or comment out BRAM code at the bottom of the file
--    syntax might need work... vectors must be the proper size
    -- for 10-bit unsigned, "1000000000" in the center number between "0000000000" and "1111111111"
	--ch1 <= '1' when (row = offset + "1000000000" or row = offset - "1000000000") else '0';
	--ch2 <= '1' when (row = offset + "1000000000" or row = offset - "1000000000") else '0';		
	-- If you do find the correct offset, your green and yellow line with draw on top of the center white grid line
	
-- TEST 3: Now that you know the offset, can properly use BRAM, and set up its comparator to video
--          uncomment BRAM code at the bottom of the file
--      If this works, the two waveforms in the BRAM should display on scopeface
--    syntax might need work... vectors must be the proper size and proper type
	ch1 <= '1' when (row - offset = unsigned(("00" & readL(15 downto 8)))) else '0';		
	ch2 <= '1' when (row - offset = unsigned(("00" & readR(15 downto 8)))) else '0';

-- do we need all 18-bits or just the upper 16-bits to write to BRAM?
	Lbus_out <= L_bus_out(17 downto 2);		-- Just the upper 16 Bits
	Rbus_out <= R_bus_out(17 downto 2);
	
-- BRAM needs UNSIGNED data, not SIGNED
-- convert Signed sample from Codec into a proper Unsigned value
        -- SOMETHING_GOES_HERE
    L_bus_out(17 downto 2) <= not(x"1000") and L_bus_out(17 downto 2);
    R_bus_out(17 downto 2) <= not(x"1000") and R_bus_out(17 downto 2);
        
   
	
-- Need logic for the FLAG register
	fg : FlagRegister
    port map(
        Q => Q,
        clear => flagClear,
        flagQ => flagQ,
        clk => clk,
        set => ready,
        reset_n => reset_n
    );
	
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0') then
                triggerTime <= "0101000000";
				triggerVolt <= "0011001000";
		    else
                if(btn(0) = '1' and btn_up_pressed = '0') then
                    btn_up_pressed <= '1';
                    triggerVolt <= triggerVolt - 1;
                elsif(btn(2) = '1' and btn_down_pressed = '0') then
                    btn_down_pressed <= '1';
                    triggerVolt <= triggerVolt + 1;
                end if;
                if(btn(1) = '1' and btn_left_pressed = '0') then
                    btn_left_pressed <= '1';
                    triggerTime <= triggerTime - 1;
                elsif(btn(3) = '1' and btn_right_pressed = '0') then
                    btn_right_pressed <= '1';
                    triggerTime <= triggerTime + 1;
                end if;
                if(btn(0) = '0') then
                    btn_up_pressed <= '0';
                end if;
                if(btn(2) = '0') then
                    btn_down_pressed <= '0';
                end if;
                if(btn(1) = '0') then
                    btn_left_pressed <= '0';
                end if;
                if(btn(3) = '0') then
                    btn_right_pressed <= '0';
                end if;
            end if;
        end if;
    end process;
    

	CntrMux : WrAddrMux
	   port map(
	       clk => clk,
	       exSel => exSel,
	       exWrAddr => exWrAddr,
	       writeCntr => writeCntr,
	       result => w_WrAddrMux
	   );

    LDinMux : DinMux
        port map(
            exBus => exLBus,
            clk => clk,
            exSel => exSel,
            result => w_DinMuxL,
            busIn => L_bus_out(17 downto 2)
        );

    RDinMux : DinMux
        port map(
            exBus => exRBus,
            clk => clk,
            exSel => exSel,
            result => w_DinMuxR,
            busIn => R_bus_out(17 downto 2)
        );
    
    ENBMUX : wrEnbMux
        port map(
            clk => clk,
            cw => cw(2),
            exSel => exSel,
            exWen => exWen,
            result => w_wrEnbMux
        );
        
        
	-------------------------------------------------------------------------------
	-- Address counter for RAM
	--		00		hold
	--		01		up
	--		10		down
	--		11		reset
	-------------------------------------------------------------------------------	
	writeCounter: process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset_n = '0') then
				writeCntr <= "0000010100"; -- why is this not zero?
			else 
				case cw(1 downto 0) is
					when "00" => writeCntr <= writeCntr + 0;
			        when "01" => writeCntr <= writeCntr + 1;			
					when "10" => writeCntr <= writeCntr - 1;			
					when others => writeCntr <= "0000010100";
				end case;
			end if;
		end if;
	end process;
	
	sw_sig(1) <= '1' when (writeCntr = x"3FF") else '0';
	


	-------------------------------------------------------------------------------
	--  Buffer a copy of the sample memory to look for positive trigger crossing
	--  "Loop back" digitized audio input to the output to confirm interface is working
	-------------------------------------------------------------------------------
	process (clk)
	begin
		if (rising_edge(clk)) then
			if reset_n = '0' then
							
			elsif(ready = '1') then
				    flagQ <= Q;	
			end if;
		end if;
	end process;
	
	
	-------------------------------------------------------------------------------
	-- Instantiate the video driver from Lab1 - should integrate smoothly
	-------------------------------------------------------------------------------
	video_inst: video port map( 
		clk =>clk,
		reset_n => reset_n,
        tmds => tmds,
		tmdsb => tmdsb,
		trigger_time => triggerTime,
		trigger_volt => triggerVolt,
		row => row,
		column => column,
		ch1 => ch1,
		ch1_enb => switch(0), -- should this be a switch?
		ch2 => ch2,
		ch2_enb => switch(1)); -- should this be a switch?


-- Audio Codec stuff goes here

sim_live <= '0';  --  '0' simulate audio; '1' live audio
                  -- should a switch go here?

Audio_Codec : Audio_Codec_Wrapper
    Port map ( clk => clk,
        reset_n => reset_n, 
        ac_mclk => ac_mclk,
        ac_adc_sdata => ac_adc_sdata,
        ac_dac_sdata => ac_dac_sdata,
        ac_bclk => ac_bclk,
        ac_lrclk => ac_lrclk,
        ready => ready,
        L_bus_in => L_bus_in, -- left channel input to DAC
        R_bus_in => R_bus_in, -- right channel input to DAC
        L_bus_out => L_bus_out, -- left channel output from ADC
        R_bus_out => R_bus_out, -- right channel output from ADC
        scl => scl,
        sda => sda,
        sim_live => sim_live);  --  '0' simulate audio; '1' live audio


-- BRAM stuff goes here

	reset <= not reset_n;
	
	leftChannelMemory : BRAM_SDP_MACRO
		generic map (
            BRAM_SIZE => "18Kb",            -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => "7SERIES",            -- Target device: "VIRTEX5", "VIRTEX6", "SPARTAN6", "7SERIES"
            DO_REG => 0,                    -- Optional output register (0 or 1)
            INIT => X"000000000000000000",            -- Initial values on output port
            INIT_FILE => "NONE",            -- Initial values on output port
            WRITE_WIDTH => 16,              -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16,               -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SIM_COLLISION_CHECK => "NONE",  -- Collision check enable "ALL", "WARNING_ONLY", "GENERATE_X_ONLY" or "NONE"
            SRVAL => X"000000000000000000", -- Set/Reset value for port output
            -- Here is where you insert the INIT_xx declarations to specify the initial contents of the RAM
            INIT_00 => X"8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFF",
            INIT_01 => X"A74FA777A79AA7B7A7CEA7DFA7EAA7EEA7ECA7E4A7D5A7BFA7A3A77FA7547FFF",
            INIT_02 => X"A269A2D1A337A39AA3FBA458A4B1A507A55AA5A8A5F2A638A67AA6B6A6EE7FFF",
            INIT_03 => X"9B369BAB9C209C959D0C9D829DF89E6E9EE49F599FCDA041A0B2A123A192A1FE",
            INIT_04 => X"94FD954B959C95F1964A96A59704976597C9983098999904997199E09A519AC3",
            INIT_05 => X"92729276927F928E92A192BA92D892FA9321934D937E93B393ED942B946D94B3",
            INIT_06 => X"950794B6946A942493E293A6936F933E931292EB92C992AD92979286927A9273",
            INIT_07 => X"9C869BF19B5E9ACF9A4499BC993998B9983E97C7975496E6967D961895B8955D",
            INIT_08 => X"A719A667A5B4A503A452A3A1A2F2A245A199A0EEA0469FA09EFC9E5A9DBB9D1F",
            INIT_09 => X"B1B3B11AB07EAFDFAF3DAE99ADF2AD48AC9DABF0AB42AA92A9E2A930A87EA7CC",
            INIT_0A => X"B8CFB888B83AB7E6B78BB72BB6C5B659B5E8B571B4F6B476B3F1B367B2DAB248",
            INIT_0B => X"B948B97EB9ABB9CFB9EBB9FFBA0ABA0DBA08B9FBB9E7B9CAB9A6B97BB949B90F",
            INIT_0C => X"B126B1ECB2A9B35EB409B4ABB544B5D3B65AB6D7B74BB7B7B819B872B8C2B909",
            INIT_0D => X"A020A16EA2B4A3F3A529A657A77EA89CA9B1AABEABC3ACBFADB2AE9CAF7EB056",
            INIT_0E => X"87C789768B218CC68E6790039199932A94B4963997B7992F9AA19C0B9D6F9ECB",
            INIT_0F => X"6B356D0A6EE070B57288745B762C77FB79C87B927D5B7F2080E282A1845C8614",
            INIT_10 => X"4E6D502751E453A55569573058F95AC65C945E646036620963DD65B36788695E",
            INIT_11 => X"358236E2384A39B83B2D3CA93E2A3FB3414042D4446D460C47B049584B054CB7",
            INIT_12 => X"23B7249425792667275F285F29672A782B922CB42DDE2F11304B318E32D83429",
            INIT_13 => X"1AD21B1C1B6E1BCA1C2F1C9D1D141D941E1E1EB11F4D1FF220A12159221A22E4",
            INIT_14 => X"1AC71A8C1A581A2C1A0719EB19D619C919C419C819D419E91A061A2C1A5A1A92",
            INIT_15 => X"21CC213420A020121F871F021E821E071D921D231CB91C561BF81BA21B521B09",
            INIT_16 => X"2CD82C1A2B5D2AA129E5292C287427BD2709265725A724FB245123AA23072267",
            INIT_17 => X"386637B9370B365935A634F03439338032C6320A314E30902FD22F142E552D96",
            INIT_18 => X"414E40DF406B3FF33F763EF53E6F3DE53D573CC63C303B973AFA3A5939B6390F",
            INIT_19 => X"458A456E454C452544F944C744904454441343CC4380432F42D9427E421D41B8",
            INIT_1A => X"44AE44DE450A453245554574458E45A445B545C145C845CB45C845C045B445A1",
            INIT_1B => X"3FF8405540B1410B416341B8420C425D42AC42F74340438643C844074442447A",
            INIT_1C => X"39FE3A583AB33B103B6F3BCE3C2F3C903CF13D533DB63E173E793EDA3F3B3F9A",
            INIT_1D => X"35FE361F3645367136A036D5370D3749378A37CE3815386038AD38FE395139A6",
            INIT_1E => X"370A36C7368C3658362A360435E435CB35B935AD35A735A735AD35B935CA35E1",
            INIT_1F => X"3F3A3E7C3DC73D193C733BD63B3F3AB13A2B39AC393538C5385E37FE37A53754",
            INIT_20 => X"4F134DE04CB34B8E4A6F49574846473D463B4540444D4361427D41A140CC3FFF",
            INIT_21 => X"655263CA624660C65F4A5DD35C615AF3598B582856CA5572541F52D3518D504D",
            INIT_22 => X"7F1E7D787BD37A2E788976E5754273A0720070616EC56D2B6B9369FE686C66DD",
            INIT_23 => X"989F971D9597940D928090EF8F5A8DC48C2A8A8E88F0875085AF840C826880C3",
            INIT_24 => X"ADCFACAEAB85AA55A91EA7E0A69BA54FA3FDA2A5A1469FE29E799D0A9B969A1D",
            INIT_25 => X"BB59BAC5BA28B981B8D0B816B753B687B5B1B4D3B3ECB2FCB203B102AFF9AEE8",
            INIT_26 => X"BF57BF61BF62BF59BF46BF29BF02BED1BE96BE51BE02BDAABD47BCDABC64BBE3",
            INIT_27 => X"B9B3BA4FBAE3BB6FBBF2BC6DBCDFBD48BDA7BDFEBE4CBE90BECBBEFCBF24BF42",
            INIT_28 => X"AC2BAD31AE32AF2EB024B114B1FEB2E2B3C0B498B568B632B6F4B7B0B863B90F",
            INIT_29 => X"99E09B169C4B9D7F9EB19FE1A10FA23AA363A489A5ABA6CBA7E6A8FEAA11AB21",
            INIT_2A => X"869D87C688F28A208B508C828DB58EEA90209157928F93C895009639977198A9",
            INIT_2B => X"75F876E077CE78C079B87AB47BB57CBB7DC57ED37FE580FB8215833284538576",
            INIT_2C => X"6A846B0D6B9C6C326CCE6D716E196EC86F7D703870F971C0728C735F74377514",
            INIT_2D => X"6546656D659965CB66036641668566CF671F677667D36836689F690F69856A01",
            INIT_2E => X"6588656465436526650D64F864E764DB64D364CF64D164D764E364F4650A6525",
            INIT_2F => X"691A68D768936851680F67CF678F6751671566DB66A3666D6639660965DB65B0",
            INIT_30 => X"6CEE6CBF6C8D6C586C216BE76BAC6B6F6B306AF06AAF6A6D6A2A69E669A2695E",
            INIT_31 => X"6DE86DFA6E086E106E146E126E0C6E026DF36DDF6DC86DAD6D8D6D6B6D446D1B",
            INIT_32 => X"69B06A216A8C6AF16B4F6BA76BF96C456C8B6CCA6D046D386D676D8F6DB26DD0",
            INIT_33 => X"5F5E602F60FB61C16281633C63F1649F654865EB6687671E67AE683868BC6939",
            INIT_34 => X"4FBD50D551E952FB540955135619571B581959135A075AF85BE35CCA5DAB5E87",
            INIT_35 => X"3D343E633F9140C041EE431C444A457646A247CC48F54A1C4B414C634D844EA2",
            INIT_36 => X"2B452C4C2D582E682F7C309331AE32CB33EC350E3634375B388439AE3ADA3C07",
            INIT_37 => X"1DBE1E641F121FC720842147221222E323BA2498257C26652754284929432A41",
            INIT_38 => X"17E217FA181D1849187E18BD1906195719B21A151A821AF71B741BFB1C891D1F",
            INIT_39 => X"1BA01B191A9C1A2919C01961190C18C118801849181C17FA17E117D217CE17D3",
            INIT_3A => X"2922280626F425E924E723EE22FE2217213920651F9A1ED81E201D711CCD1C32",
            INIT_3B => X"3EB43D2C3BAA3A2D38B5374435D83473331531BD306C2F222DDF2CA42B712A45",
            INIT_3C => X"5928576F55B75401524C50994EE94D3B4B8F49E7484246A04502436841D24041",
            INIT_3D => X"748072D8712C6F7E6DCE6C1B6A6768B166F96540638761CC60125E575C9C5AE1",
            INIT_3E => X"8CD18B738A0F88A5873685C0844682C681417FB87E2A7C977B01796677C77625",
            INIT_3F => X"9F199E2B9D369C399B349A29991597FB96D995B094809349920B90C67FFF8E29")
    port map (
            DO(15 downto 0) => readL,    -- Output read data port, width defined by READ_WIDTH parameter
            RDADDR => std_logic_vector(column),-- Input address, width defined by port depth
            RDCLK => clk,                   -- 1-bit input clock
            RST => reset,                 -- active high reset
            RDEN => '1',                    -- read enable
            REGCE => '1',                   -- 1-bit input read output register enable
            DI => w_DinMuxL,                   -- Input data port, width defined by WRITE_WIDTH parameter
            WE => "11",                     -- Input write enable, width defined by write port depth
            WRADDR => w_wrAddrMux,                -- Input write address, width defined by write port depth
            WRCLK => clk,                   -- 1-bit input write clock
            WREN => w_wrEnbMux);              -- 1-bit input write port enable
            -- End of BRAM_SDP_MACRO_inst instantiation


		
	rightChannelMemory : BRAM_SDP_MACRO
		generic map (
            BRAM_SIZE => "18Kb",            -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => "7SERIES",            -- Target device: "VIRTEX5", "VIRTEX6", "7SERIES", "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",			-- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16,              -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16,               -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SIM_COLLISION_CHECK => "NONE",  -- Collision check enable "ALL", "WARNING_ONLY", "GENERATE_X_ONLY" or "NONE"
            SRVAL => X"000000000000000000", -- Set/Reset value for port output
            -- Here is where you insert the INIT_xx declarations to specify the initial contents of the RAM
			INIT_00 => X"8BC28AF98A31896988A087D8870F8647857E84B583EC8323825A819180C88000",
			INIT_01 => X"9830976A96A595DF95199452938C92C591FE913790708FA98EE18E198D528C8A",
			INIT_02 => X"A462A3A2A2E0A21FA15DA09B9FD89F169E529D8F9CCB9C079B439A7F99BA98F5",
			INIT_03 => X"B03BAF81AEC6AE0BAD4FAC93ABD6AB19AA5CA99EA8E0A821A762A6A3A5E3A523",
			INIT_04 => X"BB9DBAEBBA39B985B8D2B81DB768B6B3B5FDB547B490B3D8B320B268B1AFB0F5",
			INIT_05 => X"C66DC5C5C51CC472C3C8C31DC272C1C6C119C06CBFBEBF0FBE60BDB0BD00BC4F",
			INIT_06 => X"D08FCFF2CF55CEB7CE18CD78CCD8CC37CB95CAF2CA4FC9ABC907C861C7BBC714",
			INIT_07 => X"D9EAD95BD8CAD839D7A7D714D681D5ECD557D4C1D42AD392D2F9D260D1C5D12A",
			INIT_08 => X"E268E1E7E165E0E2E05FDFDADF54DECEDE46DDBEDD35DCAADC1FDB93DB06DA79",
			INIT_09 => X"E9F4E983E910E89DE829E7B3E73DE6C6E64DE5D4E55AE4DFE463E3E5E367E2E8",
			INIT_0A => X"F07AF01AEFB8EF56EEF2EE8DEE28EDC1ED59ECF0EC86EC1BEBAFEB41EAD3EA64",
			INIT_0B => X"F5ECF59DF54EF4FDF4AAF457F403F3ADF357F2FFF2A6F24CF1F1F195F138F0DA",
			INIT_0C => X"FA3BF9FFF9C2F983F943F902F8C0F87DF839F7F3F7ACF765F71CF6D1F686F63A",
			INIT_0D => X"FD5DFD34FD0AFCDEFCB2FC84FC54FC24FBF3FBC0FB8CFB57FB20FAE9FAB0FA76",
			INIT_0E => X"FF4BFF35FF1EFF06FEEDFED2FEB6FE99FE7BFE5CFE3BFE19FDF6FDD2FDACFD85",
			INIT_0F => X"FFFFFFFDFFF9FFF5FFEFFFE8FFE0FFD7FFCCFFC0FFB3FFA5FF95FF85FF73FF5F",
			INIT_10 => X"FF77FF89FF99FFA9FFB7FFC3FFCFFFD9FFE2FFEAFFF1FFF6FFFAFFFDFFFFFFFF",
			INIT_11 => X"FDB6FDDBFDFFFE22FE44FE64FE83FEA1FEBEFED9FEF3FF0DFF24FF3BFF50FF64",
			INIT_12 => X"FABFFAF7FB2FFB65FB99FBCDFC00FC31FC61FC90FCBDFCEAFD15FD3FFD68FD90",
			INIT_13 => X"F69AF6E5F72FF777F7BFF805F84BF88FF8D2F913F954F993F9D2FA0FFA4BFA86",
			INIT_14 => X"F150F1ADF209F264F2BDF316F36DF3C4F419F46DF4C0F512F562F5B2F600F64E",
			INIT_15 => X"EAF0EB5EEBCBEC37ECA1ED0BED74EDDCEE42EEA8EF0CEF70EFD2F033F093F0F2",
			INIT_16 => X"E388E406E483E4FFE57AE5F4E66DE6E5E75CE7D2E847E8BBE92EE9A0EA11EA81",
			INIT_17 => X"DB2BDBB8DC43DCCEDD58DDE1DE69DEF1DF77DFFCE081E104E187E209E28AE309",
			INIT_18 => X"D1EED288D321D3B9D451D4E8D57ED613D6A7D73BD7CDD85FD8F0D980DA0FDA9E",
			INIT_19 => X"C7E6C88CC931C9D6CA7ACB1DCBBFCC61CD02CDA2CE41CEE0CF7ED01BD0B7D153",
			INIT_1A => X"BD2EBDDEBE8EBF3DBFEBC099C146C1F3C29FC34AC3F4C49EC548C5F0C698C740",
			INIT_1B => X"B1DFB298B350B408B4BFB576B62CB6E2B797B84CB900B9B4BA67BB1ABBCCBC7D",
			INIT_1C => X"A615A6D5A794A853A911A9CFAA8DAB4AAC07ACC4AD80AE3CAEF7AFB1B06CB125",
			INIT_1D => X"99ED9AB29B769C3A9CFE9DC29E859F48A00BA0CDA18FA251A313A3D4A494A555",
			INIT_1E => X"8D868E4D8F158FDC90A4916B923292F993BF9486954C961296D8979E98639928",
			INIT_1F => X"80FD81C6828F8357842084E985B2867B8743880C88D4899D8A658B2D8BF68CBE",
			INIT_20 => X"7472753B760376CB7794785C792579EE7AB67B7F7C487D117DDA7EA37F6C8034",
			INIT_21 => X"680368C9698F6A556B1B6BE16CA86D6E6E356EFD6FC4708B7153721A72E273AA",
			INIT_22 => X"5BD05C915D525E135ED55F98605A611D61E062A46367642C64F065B46679673E",
			INIT_23 => X"4FF550B0516A522652E2539E545B551855D556935752581058CF598F5A4F5B0F",
			INIT_24 => X"4491454345F646A9475D481248C7497C4A324AE94BA04C584D104DC84E814F3B",
			INIT_25 => X"39BF3A673B103BBA3C643D0F3DBB3E673F143FC1406F411E41CD427D432E43DF",
			INIT_26 => X"2F9A303730D43172321132B1335233F33495353835DB367F372437CA38703917",
			INIT_27 => X"263B26CB275B27ED287F291229A62A3B2AD02B672BFE2C962D2F2DC82E632EFE",
			INIT_28 => X"1DB91E3A1EBD1F401FC4204920CF215521DD226622EF237A24052491251E25AC",
			INIT_29 => X"162A169B170E178117F6186B18E2195919D21A4B1AC61B411BBE1C3B1CBA1D39",
			INIT_2A => X"0F9E0FFF106110C41128118D11F3125A12C2132C13961401146E14DB154A15B9",
			INIT_2B => X"0A280A770AC70B190B6B0BBF0C130C690CC00D180D710DCB0E260E830EE00F3F",
			INIT_2C => X"05D40611064E068D06CD070F0751079507D9081F086608AE08F80942098E09DA",
			INIT_2D => X"02AD02D70301032D035A038803B803E9041A044E048204B704EE0526055F0599",
			INIT_2E => X"00BB00D100E80100011A01350151016E018D01AD01CE01F002130238025E0285",
			INIT_2F => X"000200040008000C0012001A0022002C003700430050005F006F0080009200A6",
			INIT_30 => X"008400730062005400460039002E0024001B0014000E00090005000200010001",
			INIT_31 => X"0240021B01F801D501B4019401750157013B0120010600ED00D600BF00AA0097",
			INIT_32 => X"053204FA04C3048E0459042603F403C3039303640337030B02E002B6028E0266",
			INIT_33 => X"0953090808BE0876082F07E907A40760071D06DC069B065C061E05E105A6056B",
			INIT_34 => X"0E970E3B0DDF0D850D2B0CD30C7C0C260BD10B7D0B2B0AD90A890A3A09EB099E",
			INIT_35 => X"14F31486141913AE134312DA1271120A11A3113E10DA107710150FB40F540EF5",
			INIT_36 => X"1C571BD91B5D1AE11A6619ED197418FC18851810179B172716B4164315D21562",
			INIT_37 => X"24B024242398230E228421FB217320EC20661FE11F5D1EDA1E571DD61D551CD6",
			INIT_38 => X"2DEA2D512CB82C1F2B882AF12A5C29C72933289F280D277B26EB265B25CC253E",
			INIT_39 => X"37EF374936A435FF355C34B93417337532D53235319630F730592FBC2F202E85",
			INIT_3A => X"42A441F4414540963FE83F3A3E8D3DE13D353C8A3BDF3B363A8C39E4393C3895",
			INIT_3B => X"4DF14D384C804BC94B114A5B49A448EF483A478546D1461D456A44B844064355",
			INIT_3C => X"59B958FA583B577C56BD55FF5542548453C8530B524F519450D9501E4F644EAA",
			INIT_3D => X"65E0651B6457639362CF620B614860855FC35F005E3E5D7D5CBB5BFA5B3A5A79",
			INIT_3E => X"7247717F70B76FF06F296E616D9A6CD46C0D6B476A8069BA68F5682F676A66A5",
			INIT_3F => X"7ECF7E067D3D7C747BAC7AE37A1A7951788977C076F7762F7567749F73D6730E")	
		port map (
            DO => readR,    -- Output read data port, width defined by READ_WIDTH parameter,
            RDADDR => std_logic_vector(column),-- Input address, width defined by port depth
            RDCLK => clk,                     -- 1-bit input clock
            RST => reset,
            RDEN => '1',
            REGCE => '1',                   -- 1-bit input read output register enable
            DI => w_DinMuxR,                    -- Input data port, width defined by WRITE_WIDTH parameter
            WE => "11",                        -- Input write enable, width defined by write port depth
            WRADDR => w_wrAddrMux,                -- Input write address, width defined by write port depth
            WRCLK => clk,                    -- 1-bit input write clock
            WREN => w_wrEnbMux);                -- 1-bit input write port enable
            -- End of BRAM_SDP_MACRO_inst instantiation


end Behavioral;

