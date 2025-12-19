// Mo Spiegel | Aug 28 2025 | Computer Timeline | 3B

void setup() {
  size(900, 400);
  background(0);
}

void draw() {
  background(0);
  drawRef();
  histEvent(115, 175, "ABC", true, "Atanasoff-Berry Computer (ABC) \n The first electronic digital computer, which used vacuum tubes to run arithmetic calculations. \n Designed by physics professor John Vincent Atanasoff and graduate student Clifford Berry. \n Conceived in 1937 and tested in 1942 in Iowa State College.");
  dateMarker(115,225, "1942", true);
  histEvent(180, 275, "ENIAC", false, "Electronic Numerical Integrator and Computer (ENIAC) \n The first programmable digital computer, which used thousands of vacuum tubes for army artillery calculations. \n Designed by physics professor John Mauchly and electrical engineer J. Presper Eckert. \n Completed in 1945 in the University of Pennsylvania.");
  dateMarker(180,225, "1945", false);
  histEvent(315, 175, "Atlas", true, "Atlas \n One of the first supercomputers. Atlas utilized transistors for running complex calculations for science or technology applications. \n Designed by a number of collaborators from the University of Manchester and the Ferranti and Plessey companies. \n Built at the University of Manchester in England, and first used in 1962.");
  dateMarker(315,225, "1962", true);
  histEvent(380, 275, "Kenbak-1", false, "Kenbak-1 \n Considered the world's first personal computer. It was sold for individual use in the U.S. for $750. It notably didn't use a microprocessor. \n Designed by John Blankenbaker from the Kenbak Corporation. \n First sold in 1971 after its invention in California, in 1970.");
  dateMarker(380,225, "1971", false);
  histEvent(515, 175, "Intel 4004", true, "Intel 4004 \n The first microprocessor, Intel 4004, contained 2,300 transistors. It was designed for Japanese Busicom electronic calculators. \n Designed by a team of engineers working at intel, including Frederico Faggin, Ted Hoff, and Stanley Mazor. \n Developed in Intel's U.S. facilities, and released in 1971.");
  dateMarker(515,225, "1971", true);
  histEvent(580, 275, "Apple 1", false, "Apple 1 \n The first Apple computer, sold for personal use. It was initially priced at $666.66, and computed at 1 MHz with a 4-8 KB memory. \n Designed by Steve Wozniak for the Apple Company (now Apple Inc.). \n Built in Steve Jobs' parents' garage in California in 1976.");
  dateMarker(580,225, "1976", false);
  histEvent(715, 175, "Mac. 128K", true, "Macintosh 128K \n The first computer in the Macintosh line, designed for personal use. It featured a GUI, and was self-contained with a keyboard and mouse. \n Designed by Steve Jobs and Jef Raskin, as well as Jerry Manock and Burrell Smith. \n Made in an Apple Factory in Fremont, California, in 1984.");
  dateMarker(715,225, "1984", true);
  histEvent(780, 275, "IBM Q One", false, "IBM Q System 1 \n The first circuit based, commercial quantum computer. It used the entanglement of qubits (bits in superpositions) to run complex calculations. \n Designed by a number of IBM researchers and engineers, in collaboration with the companies Groppion, Map Project Office, and Universal Design Firm. \n Designed and constructed in U.S. IBM institutes, as well as in London and Milan. Unveiled in 2019.");
  dateMarker(780,225, "2019", false);
}

//Draw reference (static) info
void drawRef() {
  //Title info
  textAlign(CENTER);
  textSize(38);
  fill(0,100,255);
  text("Historic Computer Systems", 448, 61);
  fill(0, 255, 255);
  text("Historic Computer Systems", 450, 60);
  fill(255);
  textSize(20);
  text("By Mo Spiegel", 450, 90);

  //Render timeline
  stroke(0, 255, 255);
  line(50, 225, 850, 225);
  int z = 50;
  //Loop for end bar rendering
  while (z <= 850) {
    line(z, 235, z, 215);
    z = z + 800;
  }

  //Timeline text markers
  fill(255);
  textSize(14);
  text("1940", 50, 260);
  text("2020", 850, 260);
}

//Draw historic computer events
void histEvent(int x, int y, String title, boolean top, String details) {
  if (top == true) {
    line(x, y, x, y+50);
  } else {
    line(x, y, x, y-50);
  }
  rectMode(CENTER);
  stroke(0,100,255);
  fill(0,100,255);
  rect(x-3,y+3,80,30,30);
  stroke(0,255,255);
  fill(0, 255, 255);
  rect(x, y, 80, 30, 30);
  fill(0);
  text(title, x, y+6);

  //Hitbox
  if (mouseX>x-40 && mouseX<x+40 && mouseY<y+15 && mouseY>y-15) {
    fill(255);
    text(details, width/2, 320);
  }
}

//Draw dates above or below historic events
void dateMarker(int a, int b, String date, boolean up) {
  textAlign(CENTER);
  fill(255);
  if (up == true) {
    text(date, a, b+20);
  } else {
    text(date, a, b-13);
  }
}
