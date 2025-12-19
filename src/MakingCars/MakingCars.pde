//Mo Spiegel | 18 Sept 2025 | Making Cars | 3B

//Reserve memory for cars
Car[] cars1 = new Car[100];

void setup() {
  size(700, 700);
  //Call constructor
  for (int a = 0; a < cars1.length; a = a + 1) {
    cars1[a] = new Car();
  }
}

void draw() {
  background(250);
  for (int c = 0; c < cars1.length; c = c + 1) {
    cars1[c].display();
    cars1[c].move();
  }
}
