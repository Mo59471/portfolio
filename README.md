# Programming Portfolio
## Mo Spiegel | 2025-2026
### Contact: moshespieg@gmail.com
&nbsp;
## Certifications
* None as of yet, will take CTE Certification Test for Computer Programming in January
  
&nbsp;

## Projects for Term 1

&nbsp;

### Calculator (2025)

This project is an interactive graphical calculator programmed in Java using the Processing IDE. It features a custom-designed interface with a numeric keypad, operation buttons, and a live display area. All buttons are created using a custom Button class that handles their visuals, hover effects, and click detection. The calculator supports basic operations like addition, subtraction, multiplication, and division, as well as advanced functions such as exponentiation, natural logarithm, square root, factorial, sign toggle, and decimal input. It uses two operands (l and r) with a boolean flag to track which is being edited, while the current value is shown through the dVal display variable. Calculations are handled in the performCalculation() method, which also validates special cases like factorials and logarithms. The interface and display are drawn programmatically, including the stylized title and layered text. 

&nbsp;

![Running Calculator](https://github.com/Mo59471/portfolio/blob/main/images/calc.png?raw=true)

&nbsp;

![Calculator UML](https://github.com/Mo59471/portfolio/blob/main/images/CalculatorUML.jpg?raw=true)

&nbsp;
***
&nbsp;

### Historic Computer Systems Interactive Timeline (2025)

This project is an interactive graphical timeline programmed in Java using the Processing IDE which displays information about historic computer systems. It features a programically drawn timeline with layered text and shapes to create a graphically pleasing interface. The application is designed with modularity, featuring three custom methods that draw event boxes (histEvent()) and date markers (dateMarker()), and one that draws static information (drawRef()). A boolean flag is used to determine whether the event boxes and date markers are placed above or below the timeline. The event boxes utilize the prebuilt mouseX and mouseY variables to track the user's cursor and create a hitbox that detects whether the user is hovering over them. Detailed descriptions of several computer systems are given once the user hovers over an event box.

&nbsp;

![Running Timeline](https://github.com/Mo59471/portfolio/blob/main/images/ComputerTimeline.png?raw=true)

&nbsp;

* [Windows EXE](https://github.com/Mo59471/portfolio/blob/main/src/Computer%20Timeline/windows-amd64.zip)
* [Source Code](https://github.com/Mo59471/portfolio/tree/main/src/Computer%20Timeline)

&nbsp;
***
&nbsp;

### ZOOG: Interactive Digital Art (2025)

This project is an interactive digital artwork programmed in Java using the Processing IDE. It features a programizally rendered sprite ('Zoog') which is drawn across the screen by repeatedly calling the developer-defined 'drawZoog()' method underneath a greater draw method. The drawZoog method uses an argument with two position paramaters that are defined as some offset of mouseX and mouseY, causing the set of sprites to follow the user's cursor and enabling the user to draw Zoogs across the screen. The color of each sprite also changes depending on the mouse position, creating a visually interesting and interactive digital artwork.

&nbsp;

![Running Application](https://github.com/Mo59471/portfolio/blob/main/images/ZOOG.png?raw=true)

&nbsp;

* [Windows EXE](https://github.com/Mo59471/portfolio/blob/main/src/ZOOG/windows-amd64.zip)
* [Source Code](https://github.com/Mo59471/portfolio/tree/main/src/ZOOG)

&nbsp;
***
&nbsp;

## Projects for Term 2

&nbsp;

### Making Cars: Graphics Display (2025)

This project is a dynamic graphical display of randomly generated car objects programmed in Java using the Processing IDE. It features an object oriented design, utilizing the class 'Car' with a constructor including a speed parameter, position parameters, a lights parameter (determining if a given car is displayed with headlights), a color parameter, and a forward boolean parameter that determines which direction a given car moves (forward or backwards). All of these parameters are set randomly to create a different display of random, moving cars each time the application is run, with the forward parameter being determined using a local variable set to a random integer 1 or 0. 100 Car objects are called in an array in the mainfile, and displayed by looping through each one's member 'display' method. The cars are programically drawn and layered shape techniques are used to create drop shadows.

&nbsp;

![Running Application](https://github.com/Mo59471/portfolio/blob/main/images/MakingCars.png?raw=true)

&nbsp;

* [Windows EXE](https://github.com/Mo59471/portfolio/blob/main/src/MakingCars/windows-amd64.zip)
* [Source Code](https://github.com/Mo59471/portfolio/tree/main/src/MakingCars)

&nbsp;
***
&nbsp;

### Musikhelfer (2025) (Team Project)

This project is an object-oriented music utility tool programmed in Java using the Processing IDE. It features a metronome, auto-harmonizer, tuner, and an interval ear trainer. The project was developed by several group members including myself, Simon Sakata, Ethan Tang, Kai Yun Chao, and Aristotle Stokes.
&nbsp;
My individual contributions are as follows:
&nbsp;
1. # Coded the Note Class #
* This class codes for the Note object, which is used by the user to input notes onto a score for the auto-harmonizer utility that takes any given melody and provides for it the harmonized chord. The Note class has a constructor that defines its position on the score with x and y integers, whether it has been inputted with a boolean, whether it is flat or sharp with booleans, and its note value with the 'noteTog' integer. A hover() member method draws a gray-shaded note that snaps to lines and spaces on the score as the user hovers their cursor over it, a functionality which is achieved by defining individual hitboxes for each line and space. The inputNote() member method inputs a static note on the score and is called under a greater mouseReleased() method, and uses the same hitbox logic to initialize the y variable based on the user's cursor position on the score and draw a note who's position is determined by this y. The class uses imported PImages and contains if conditions for the sharp and flat booleans to determine whether or not to draw a sharp or flat above/below an inputted or hovering note, as well as if conditions for the 'restMode' boolean to determine whether or not to draw the note as a rest.

2. # Coded the harmMode() Method #
* This method under the main project file contains all the display logic for the auto-harmonizer screen and updates the notes array list once a note is inputted. It also contains loops that iterate through each note's member methods, and contains the display logic for displaying the resulting harmonized chord once a harmonization is carried out by checking values from the harmonize() method's returned string list.

3. # Coded the harmPlay() Method #
* This method under the main project file contains logic for playing the inputted notes/melody and the harmonized chord for the auto-harmonizer utility. It utilizes a for-loop with delays inside of it to iterate through every note on the score and play a pitch corresponding to its y-position on the score, with the delays determining a given note's pitch's duration using its noteTog value. The harmonized chord is played as well by simeltaneous if statements that check values from the harmonize() method's returned string list.

3. # Coded harmButton Functionality #
* The harmButton array list contains all the user-clickable buttons for the harmonizer utility, and the logic for each of these buttons was implemented by myself under the mouseReleased method that detects a click and release. The various buttons include sharp and flat buttons, note value buttons, a rest toggle button, a clef toggle button, a play button, and a harmonize button, as well as a clear and backspace button. The sharp, flat, rest, and note value buttons alter the sharp, flat, restMode, and noteTog variables in the constructor of the last note in the array list so long as it hasn't been inputted (hovering). The clear and backspace buttons remove notes from the dynamic array list.

4. # Miscellaneous Bug Fixes, Adjustments, and Data Contributions #
* Added images for the notes, rests, and sharps to a data folder
* Project-wide bug fixes
* Small project-wide contributions such as PImage initializations, etc.

&nbsp;

![Running Application](https://github.com/Mo59471/portfolio/blob/main/images/MakingCars.png?raw=true)

&nbsp;

*Note: To run this project, access and download the group repository so that you will have the data folder containing images, sounds, etc.*

* [Windows EXE](https://github.com/Mo59471/portfolio/blob/main/src/Musikhelfer/windows-amd64.zip)
* [Source Code](https://github.com/Kai535813/Musikhelfer/tree/main/src/Musikhelfer)
* [Note Class](https://github.com/Kai535813/Musikhelfer/blob/main/src/Musikhelfer/Note.pde)

This project was stored in a seperate group repository, linked to here:

* [Musikhelfer Repository](https://github.com/Kai535813/Musikhelfer/tree/main)

