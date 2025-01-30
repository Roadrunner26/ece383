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
