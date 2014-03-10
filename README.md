MarsRoverRubyLY
==========

The challenge was to create a plateau on Mars on which Nasa could land rovers, and use the rovers' onboard cameras to gain an understanding of the terrain and its surrounds.

I used three classes: Mars, Rover, and Satellite, with the following purposes.

Mars: Mars contains a basic grid of size set by NASA, upon which the Rovers can move around.

Rover: the rover can take directions to turn a direction, or to move across the plataeu, the rover also knows to skip over commands that take it out of the terrain. I chose this rather than raise an error message as I thought it made sense for the rovers to get as much information as possible!

Satellite: the satellite is used to communicate with NASA, it can take input files with instructions, initialise rovers accordingly, and send information back to NASA.

Additional Features
===================

I would like to implement a front end so you can view the rovers on the screen, and view their route across the plateau.

I would also like to implement a way to communicate with NASA through the command line, and send informaton back to NASA in a text file.




