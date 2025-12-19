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

This project is an interactive graphical timeline programmed in Java using the Processing IDE which displays information about historic computer systems. It features a programically drawn timeline with layered text and shapes to create a graphically pleasing interface. The application is designed with modularity, featuring two custom methods that draw event boxes and date markers. A boolean flag is used to determine whether the event boxes and date markers are placed above or below the timeline. The event boxes utilize the prebuilt mouseX and mouseY variables to track the user's cursor and create a hitbox that detects whether the user is hovering over them. Detailed descriptions of several computer systems are given once the user hovers over an event box.

&nbsp;

![Running Timeline](https://github.com/Mo59471/portfolio/blob/main/images/ComputerTimeline.png?raw=true)

&nbsp;

* [Windows EXE](https://github.com/Mo59471/portfolio/blob/main/src/Computer%20Timeline/windows-amd64.zip)
* [Source Code](https://github.com/Mo59471/portfolio/tree/main/src/Computer%20Timeline)

&nbsp;
***
&nbsp;

### ZOOG: Interactive Digital Art (2025)

This project is an interactive digital artwork programmed in Java using the Processing IDE. It features a programizally rendered sprite ('Zoog') which is drawn across the screen by repeatedly calling the developer-defined 'drawZoog' method underneath a greater draw method. The drawZoog method uses an argument with two position paramaters that are defined as some offset of mouseX and mouseY, causing the set of sprites to follow the user's cursor and enabling the user to draw Zoogs across the screen. The color of each sprite also changes depending on the mouse position, creating a visually interesting and interactive digital artwork.

&nbsp;

![Running Application](https://github.com/Mo59471/portfolio/blob/main/images/ZOOG.png?raw=true)

&nbsp;

* [Windows EXE](https://github.com/Mo59471/portfolio/blob/main/src/ZOOG/windows-amd64.zip)
* [Source Code](https://github.com/Mo59471/portfolio/tree/main/src/ZOOG)

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


