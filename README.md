# ece383-Final Project 
2	Plan
	To implement this project, I plan to work in scopeface and video to create ROM from sprite sheets that I found online. After I successfully draw sprites to the screen, I will implement them in custom hardware in order to be run in microblaze. I will implement the NES controller and audio codec in my custom hardware and I will control animation and game state logic in the microblaze.
2.1	Proposal
	1 Proposal
1.1	Objective Statement
The purpose of this system is to create a functioning game modeled after Sega’s “Frogger”, created using VHDL and MicroBlaze on the Nexys Video FPGA.
1.2	Requirements
Required Functionality:
•	Display a frog and obstacles to a monitor via HDMI in 640x480 pixel resolution.
•	Pressing a button on the keyboard moves the frog one position along the (x,y) plane.
•	This level will support 5 lines of traffic and the river of logs.
B-Level Functionality:
•	Movement of frog is achieved with the NES controller.
•	Obstacles (cars and logs) travel across the screen at a predetermined interval and pattern.
•	Frog can ride the logs back and forth across the river, dies if hit by the car and falls into the river.
•	Skull and crossbones are displayed where previous frogs have died.
•	Game points are displayed to the terminal when the user reaches the end
A-Level Functionality:
•	Traffic and splash noises are implemented when the frog dies.
•	Scoreboard is displayed on the VGA monitor.
•	Game menu accessed by NES controller to start stop and restart gameplay.
•	Frog gets jumping animation.
1.3	Level-0 Description & Top Level Design
Overall Inputs:
•	NES Controller interfaced to FPGA through GPIO pins.
•	Keyboard interfaced to MicroBlaze through UART.
Overall Outputs:
•	Monitor display interfaced through HDMI out.
•	Speaker interfaced through audio out.
Overall Behavior:
•	The user will only interact with the game through the NES controller. User will start the game from the main menu, and will display the frog at the start location and the traffic and logs will start. They will earn points for every frog that reaches the end. If the player dies, the level will restart with the grave notated and the frog at the bottom of the screen.

2.2	Detailed Architecture and Subsystem Design

 ![image](https://github.com/user-attachments/assets/5ea92573-36a2-4749-80ee-d350f1b28aa6)

	
2.2.1	Level 1 Design
![image](https://github.com/user-attachments/assets/420aa955-d361-4362-b16f-3c324fb642cd)

 
2.3	Calculations/Analysis/Drawings
![image](https://github.com/user-attachments/assets/1819cf87-41e8-4f98-91c2-c8bb673b1270)

 
Figure Above: How I imagine Frogger to look after I create it.
Figure Below: Screenshot of python code I used to create my ROM component.
 ![image](https://github.com/user-attachments/assets/21c65970-9860-485f-9403-aeac2536f97c)


2.5	Milestone 1
In Milestone 1, I will create a ROM component for my sprite memory and draw it onto the HDMI monitor. I will then create custom hardware to be programmable by the microblaze. I will know if this works fully by visually verifying on the screen that I can draw many different sprites successfully onto the screen in the lanes that they belong in. All tests are visual at this point. I will also use the keyboard to determine if I can successfully pass UART data into the hardware to change the game state.

2.6	Milestone 2
In milestone two, I will create functional movement of all the cars, create death animation and successfully implement sound. I will include a scoreboard and high scores as well as a game menu.

2.7 	Updated Functionality and Requirements

Required Functionality:
•	Display a frog and obstacles to a monitor via HDMI in 640x480 pixel resolution.
•	Pressing a button on the keyboard moves the frog one position along the (x,y) plane.
•	This level will support 5 lines of traffic and the river of logs.
Minimum functionality was met by demo day on M40.

3 	Milestone 1
I have met my deliverable obligations for the first milestone.

4	Milestone 2
Due to time constraints, I was unable to meet my deliverable obligations for milestone two.

5 	Final Demonstration
During the final demonstration, I was successfully able to draw cars and logs to the screen as well as move my frog through the UART terminal using keyboard commands.

6	Poster presentation
I presented my poster to Lt. Col Trimble through a teams video screen recording and sent it to him on teams.

8	Git Repo
Final Project Repo was pushed to teams on 8 May 2025.

Appendix A:
If you would like to duplicate my demo, you need to run my code in vitis and open up a serial port with the prog and uart ports connected to your computer. Once you have a serial port open, the commands ‘w’ ‘a’ ‘s’ ‘d’ should be sufficient to properly move the frog.
