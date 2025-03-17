Lab 1 is an introduction to creating an functional oscilloscope with our NEXYS Video boards. In this lab we used the PROG, HDMI OUT and power port to program our FPGA and output the result onto a monitor. 
We programmed functionality for triggers, 2 channel waves, and a voltage time graph with hash marks on the x and y axes.

Design/Implementation - Include your diagrams from HW5. Provide the block-diagram of your solution using the signal names in your code. The block diagram given above is somewhat incomplete, 
make sure to include corrections to this diagram. An editable block diagram PPT is provided here. For each module that you built, explain its overall purpose, inputs, outputs, and behavior. 
You do not need to include code in this report (instead put all your vhdl files (code and testbench), wcfg file, and bit files in GitHub).

Entity: Lab1
Purpose: Top level entity for receiving inputs from switches and buttons to turn on and off channels.
Inputs: btn, clk, reset_n, sw(1 downto 0)
Outputs: tmds, tmdsp
Behavior: When a button is toggled, the triggers move, when switches are toggled, channels turn on and off.

Component: Video
Purpose: Provides channeels and trigger volts for for VGA, DVID, mid level component
Inputs: clk, reset_n, tr_volt, tr_trigger, ch1, ch2, ch1_enb, ch2_enb
Outputs: tmds, tmdsp
Behavior: Passes values to lower level components.

Component: Clock_Wiz_0
Purpose: Counts for DVID and VGA
Inputs: clk, reset_n
Ouptuts: clk_out_1, clk_out_2, clk_out_3
Behavior: resets when reset is hit, counts otherwise.

Component: VGA
Purpose: Contains counter and scopeface, passes trigger volt and time to scopeface, creates monitor screen.
Inputs: pixel_clk, reset_n, tr_volt, tr_time, ch1, ch2, ch1_enb, ch2_enb
Outputs: R, G, B, blank, v_sync, h_sync
Behavior: Counts and has 4 stages, active video, front porch, sync, and back porch, draws to monitor.

Component: DVID
Purpose: Converts VHDL to HDMI for colors.
Inputs: R, G, B, blank, v_sync, h_sync, blank, serialize_clk, serialize_clk_n
Outputs: R, G, B
Behavior: Input VHDL color to output HDMI colors.

Component: ScopeFace
Purpsoe: Draws onto the monitor
Inputs: tr_volt, tr_time, row, column,  ch1, ch2, ch1_enb, ch2_enb
Outputs: R, G, B
Behavior: Draws grid lines automatically, draws ch1 and ch2 signals onto the HDMI monitor.


![Image](https://github.com/user-attachments/assets/5591fad9-029d-43fa-9532-9e7b675c428c)
![Image](https://github.com/user-attachments/assets/54721e84-c82a-4bcf-9ad1-3369b5819e51)

Test/Debug - Briefly describe the methods used to verify system functionality (such as products from gate check 1 and 2).
Through using gatecheck 1, 2, required functionality, and A functionality, students were able to demonstrate that the lab worked correctly. In gatecheck 1, students used
screenshots of waveforms to show that the counters were working correctly. In gatecheck 2, students showed successful implementation of the 
Show at least three excerpts from your testbench for the VGA module (as screen shots):
![Screenshot 2025-01-29 202842](https://github.com/user-attachments/assets/784e128d-5cdc-462a-a189-1bc0d8143367)
![Screenshot 2025-01-29 202850](https://github.com/user-attachments/assets/c2dbf7ad-eef8-4c2b-a351-89d018e03088)
![Screenshot 2025-01-29 202904](https://github.com/user-attachments/assets/920e57e0-da30-484b-b09f-4af8b9a89f23)

Show the h_synch going high, low, and high in relation to column count.
![Image](https://github.com/user-attachments/assets/91f400db-465e-4d2c-9569-d1d0b6379cf8)
![Image](https://github.com/user-attachments/assets/30f4aab0-1188-4a70-a688-641cb3f61a43)
Show the v_synch going high, low, and high in relation to row count AND column count.
![Image](https://github.com/user-attachments/assets/b8dfa149-3a41-424b-a9b0-265694593aab)
![Screenshot 2025-01-29 201410](https://github.com/user-attachments/assets/4e781ee3-b378-4d66-8b46-f5c224ae120d)
Show the blank signals going high, low, and high in relation to column count and row count.
![Image](https://github.com/user-attachments/assets/011688ee-3d4b-4579-bd6e-e7576b3879c4)
![Image](https://github.com/user-attachments/assets/2ac651ca-aa9a-4f82-9cd3-7ce5856074ce)

Show the column count rolling over causing the row count to increment and max counts for both counters.
![Captura de pantalla 2025-01-25 185056](https://github.com/user-attachments/assets/371c2813-8506-4cc6-90d4-7bd89eb112de)
![Captura de pantalla 2025-01-25 185309](https://github.com/user-attachments/assets/1790d3ab-b836-414b-a539-e9114f424650)
List the major problems you encountered and how you fixed them. This should cover all the problems you encountered in the lab and how you fixed them. Break each problem and solution into separate paragraphs.

Counter Roll bit was not incrementing correctly when initially simulating: I encountered many issues through attempting to simulate the counter the first time. Eventually I realized I had to make several different wires
in order to correctly send the roll into the next counter as the control bit.

Bad board prevented HDMI connection from working correctly: I had to replace my board entirely after receiving a "device not detected on target error." I unfortunately was not able to diagnose the core issue of this error
and eventually just replaced the board.

Grid lines were drawn out of bounds: I had to make a boolean called is_out_of_bounds to ensure that any time a line was drawn out of bounds it would be replaced by the background color (black).

Buttons would increment/decrement incredibly quickly and cycle through the bounds (it was initialized as a 10 bit unsigned number). This would cause my triggers to act crazy and make weird animations because our
clock is set at 25 MHz. It's obviously impossible to touch a button with that degree of precision so it would increment almost 10000 times per click. I fixed this by creating a variable called btn_pressed and 
only turning it on after it had been set to zero. This would ensure that it would only increment one time per button click.

Results - This section should clearly state for each milestone/functionality the date/time it was achieved, level of achievement (e.g, achieved, partially-achieved, not achieved), 
what was achieved, and evidence you proved it worked (e.g., via demo or images/videos). We no longer use the printed lab cutsheets signed by your instructor as you meet each milestone, 
but instead have you make a submission in Gradescope for each milestone.

I achieved gatecheck 1, which is correct simulation for the counters in reference to the column and row counts and rollovers after active video, front porch, sync, and back porch at 1600 on Saturday 25 January.
I proved this by uploading screenshots to github and submitting on gradescope. I achieved these metrics.

I achieved gatecheck 2, which is correct implementation of v_sync, h_sync, and blank from the counters as well as *any* display on my HDMI monitor on Monday, 27 January through photos uploaded to github and a submission
to gradescope. I had full achievement.

I achieved both required functionality and A functionality at 1500 on Wednesday, 29 January. This functionality demonstrated channel 1,2 traces and enable/disable of each channel through switches.
A list functionality was trigger movement throuugh BTNU, BTND, BTNR, and BTNL and moving the trigger time and trigger voltage either left or right. Both of these were fully achieved and demonstrated through a demo video
on teams sent to Lt. Col Trimble.

Conclusion - Explain what your learned from this lab and what changes you would recommend in future years to this lab or the lectures leading up to this lab.


I learned that I must start labs early or risk falling behind. Because bit streams take so long, you should not treat them like a compile and run in a normal program because you will lose many hours trying to 
implement small changes at once. I would recommend in the future that students work on many seperate, independent problems simultaneously and comparing all those results in one bitstream generation. No changes 
recommended for future years, I was very satisfied with this lab.

**Lab 2**
![Image (9)](https://github.com/user-attachments/assets/72bfe563-f0f4-487c-8f29-8c88fe0caa4c)

![Image (10)](https://github.com/user-attachments/assets/d47b72f7-2edb-4b02-9507-299c7388274c)


In lab 2, we were looking to expand on our goals from lab 1 and create a working oscilloscope. Where in Lab 1, we created the Video component with working VGA, scopeFace and synchronize, in lab 2 we significantly increased the capability and robustness of this oscilloscope. Taking audio data from an audiocodec, we stored memory inside a BRAM and implemented triggers to be able see live audio data from the headphone jack appear stationary. As the trigger voltage moved up and down as a result of button presses, the audio data would trigger on that voltage, looking stationary.
Modules:
Lab 2:
	Purpose: Top File
	Inputs: clk, reset_n, ctrl, ac_adc_sdata(in), scl, sda
	Outputs: ac_mclk, ac_bclk, ac_lrclk
	Behavior: Connects finite state machine to the datapath.
Lab 2 Datapath:
	Purpose: Take input from the computer audio jack and output a voltage to display on the computer screen through the HDMI cable.
	Inputs: clk, reset_n, ctrl, ac_adc_sdata(in), scl, sda, sim_live, exWrAddr, exWen, exSel, ch1_enable, ch2_enable, flagClear, exRBus, exLBus, cw(2 downto 0)
	Outputs: ac_bclk, ac_lrclk, scl, sda, ac_mclk, sw(2 downto 0), L_Bus_Out, R_Bus_Out, tr_volt, tr_time, flagQ, tmds, tmdsb, ac_dac_sdata(out)
	Behavior: Takes in control words and switches on the clock cycle and directs the Audio Codec Wrapper and BRAM to write data to the monitor. It can either use internal or external data that is flipped on by a switch, denoted by sim_live. Additionally, can turn on or off channels and change the trigger voltage or trigger time that the data triggers on. Provides a status word to the FSM (Control Unit) that determines the next state.
Lab 2 Control Unit:
	Purpose: Responsible for directing the datapath to cycle through different states based on a control word output.
	Inputs: clk, reset_n, sw(2 downto 0).
	Outputs: cw(2 downto 0).
	Behavior: Provides a control word to the datapath based on the current state and the input (the status word).
Flag Register:
	Purpose: Provides a way for the top module to see when readyReady (sw(1)) is set.
	Inputs: clk, reset_n, readyReady, flagClear.
	Outputs: flagQ
	Behavior: When readyReady is set on the clock edge, flagQ gets 1, when flagClear is set, flagQ gets 0.
wrAddrMux:
	Purpose: Provide an address to the BRAM.
	Inputs: exSel (select bit), writeCntr, exWrAddr
	Outputs: w_wrAddrMux
	Behavior: sets w_wrAddrMux to writeCntr when exSel (switch(2)) is 1, exWrAddr when exSel is 0.
DinMux (Left and Right):
	Purpose: Provide data in to the left and right BRAMs to display onto the HDMI monitor.
	Inputs: ExXBus, w_Xbus_out, exSel (select bit)
	Outputs: w_DinMuxX
	Behavior: w_DinMuxX gets exLBus when exSel is 1, w_Xbus_out when exSel is 0.
Memory Counter:
	Purpose: increment memory addresses to provide to the WrAddrMux.
	Inputs: cw(1:0)
	Outputs: writeCntr
	Behavior: every clock cycle, it reads the control word and either resets, increments, or holds the current value.
wrEnbMux:
	Purpose: Provides the enable bit to the BRAM
	Inputs: cw(2), exWen, exSel (select bit)
	Outputs: w_wrEnbMux
	Behavior: w_wrEnbMux gets exWen when exSel is 1, cw(2) when 0.


This lab was a fascinating test in patience. I often tried to change one variable at a time while coding and debugging this lab, but the generate bitstream time guaranteed that I needed to wait at least 12 minutes to compile before being able to test functionality. This led to an interesting case study where the entire lab would break if something messed up, but it wasn’t time efficient to change only one line of code per bitstream generation.
Live data didn’t work and the screen didn’t scroll when the compare statement was less than 1020. To be honest I am not entirely sure why this didn’t work. Lt Col Trimble eventually had to write me a youtube video to help me debug this, we pretty much disconnected every wire and hard coded it to a specific value to force functionality. When I connected all these wires back, I found a couple of uninstantiated wires that were driving muxes and realized that must have been one of the problems. It was really quite odd that the entire lab would break and not work at all when fixing a thought to be isolated problem.
I could not get the debounce to work in time to submit this lab. I tried implementing the debounce file in both the datapath, the top file, and inside a separate trigger component, but it appeared that my buttons would cycle because the input was not communicating with the debouncer.

Gate Check 1			2/11/2025	Fully achieved via teams demo.

Gate Check 2			2/15/2025	Fully achieved via teams demo.

Gate Check 3			3/13/2025	Fully achieved via in class demo.

Required Functionality 	3/13/2025	Fully achieved via in class demo.

B Level Functionality		3/13/2025	Fully achieved via in class demo.

A Level Functionality		3/13/2025	partially achieved via in class demo. Debouncing buttons do not work.
 
