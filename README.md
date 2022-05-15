# Verilog-Reaction-Timer
Device used: 
 - Terasic DE10-Lite board

Program:
Programmed using Verilog and Quartus will be used to program the Terasic DE10-Lite board.

Brief description of project and how combinational and sequential logic will be used:
-	In this project, two multiplexers will be used. One of the multiplexers will be used to start the first run when it is in 0. When it will be pushed to 1, the second run will start. This multiplexer will also be used to start a fresh run by changing its value again. 
-	The score between two runs will be stored and will be displayed by activating another multiplexer.
-	A key will be used to start the timer. Another key will be used to reset the device and start from beginning.

Testable Features:
-	The first run will start when a switch, SW8 for instance here, will be set to 0, and the user will press a key, KEY1 for instance here. This will trigger a random delay before activating all the corresponding LEDs as well as a timer which is accurate to the millisecond. 
-	Pressing KEY1 again will deactivate the corresponding LEDs and pause the timer and will display the reaction time or the time taken to press the KEY1 again after the first time. If the SW8 will be set to 1, the second run will start, and the corresponding LEDs and the timer will be started. The switch beneath the active LEDs must be activated to stop the timer and it will be displayed. 
-	The high score between both runs will be displayed if SW9 is activated. The project can also be reset for fresh runs by changing SW8. 
-	There will be a another testing feature where an ultrasonic sensor will be used to detect the reaction time.
