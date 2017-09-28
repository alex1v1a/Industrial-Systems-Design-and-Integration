The following code was made with Arduino, please add the Included Libraries attached to compile the code.

The program Pneumatic Device will instruct the following


The program is made to fire a loaded projectile.

1. The IR sensor notifies when the projectiles are loaded and when no more are available.

2. The Time of Flight sensor detects the distance of the extruded arm and will display this value via serial and LCD

3. Once activated the device will use automation to project each tennis ball with a given delay using the pneumatic controlled valve to activate the pneumatic arm in either extended, or contracted position. The period of which allows the ball to be reloaded. 

4. Once the cartridge is depleted the IR sensor will hold all process until a new ball(s) is loaded.

5. Their is a manual override physical relay bypass push button(red) located on the rear of the device that will override and deploy at any time.

Please refer to the comments in the program for more details.

Test program is for a second Ardufruit Time of Flight sensor Adafruit_VL53L0X