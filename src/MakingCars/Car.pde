class Car {
  //Member Variables aka Data/Attributes
  color c;
  float x;
  float y;
  float speed;
  float lights;
  boolean forward;

  //Constructor (set variables in constructor)
  Car() {
    c = color(random(80, 255), random(80, 255), random(80, 255));
    x = random(width);
    y = random(height);
    speed = random(1, 8);
    lights = random(0, 1);
    int r = int(random(0, 2));
    if (r == 0) {
      forward = true;
    } else {
      forward = false;
    }
  }

  //Member Methods
  void display() {
    rectMode(CENTER);
    if (forward == true) {
      //Shadow
      stroke(60);
      fill(60);
      rect(x-15, y-3, 7, 19, 5);
      rect(x+5, y-3, 7, 19, 5);
      rect(x-3, y-3, 35, 15, 5);

      //Tire Tracks for fast cars
      if (speed >=4) {
        stroke(100, 127);
        fill(100, 127);
        rect(x-30, y+8, 32, 1);
        rect(x-30, y-8, 32, 1);
      }

      //Tires
      fill(0);
      stroke(0);
      rect(x-12, y, 7, 19, 5);
      rect(x+8, y, 7, 19, 5);

      //Car Body
      fill(c);
      stroke(c);
      rect(x, y, 35, 15, 5);

      //Headlights
      if (lights >=0.5) {
        stroke(255, 255, 0, 127);
        fill(255, 255, 0);
        rect(x+16, y+6, 3, 5);
        rect(x+16, y-6, 3, 5);
        fill(255, 255, 0, 127);
        triangle(x+16, y+6, x+100, y+12, x+100, y);
        triangle(x+16, y-6, x+100, y-12, x+100, y);
        fill(255, 127);
        stroke(255, 127);
        triangle(x+16, y+6, x+100, y+8, x+100, y+4);
        triangle(x+16, y-6, x+100, y-8, x+100, y-4);
      }

      //Windshield Shadow
      stroke(60);
      fill(60);
      rect(x+5, y-1, 9, 12);

      //Windshield
      stroke(230);
      fill(230);
      rect(x+7, y, 9, 12);
    } else {
      //Shadow
      stroke(60);
      fill(60);
      rect(x+15, y-3, 7, 19, 5);
      rect(x-5, y-3, 7, 19, 5);
      rect(x+3, y-3, 35, 15, 5);

      //Tire Tracks for fast cars
      if (speed >=4) {
        stroke(100, 127);
        fill(100, 127);
        rect(x+30, y+8, 32, 1);
        rect(x+30, y-8, 32, 1);
      }

      //Tires
      fill(0);
      stroke(0);
      rect(x+12, y, 7, 19, 5);
      rect(x-8, y, 7, 19, 5);

      //Car Body
      fill(c);
      stroke(c);
      rect(x, y, 35, 15, 5);

      //Headlights
      if (lights >=0.5) {
        stroke(255, 255, 0, 127);
        fill(255, 255, 0);
        rect(x-16, y+6, 3, 5);
        rect(x-16, y-6, 3, 5);
        fill(255, 255, 0, 127);
        triangle(x-16, y+6, x-100, y+12, x-100, y);
        triangle(x-16, y-6, x-100, y-12, x-100, y);
        fill(255, 127);
        stroke(255, 127);
        triangle(x-16, y+6, x-100, y+8, x-100, y+4);
        triangle(x-16, y-6, x-100, y-8, x-100, y-4);
      }

      //Windshield Shadow
      stroke(60);
      fill(60);
      rect(x-5, y-1, 9, 12);

      //Windshield
      stroke(230);
      fill(230);
      rect(x-7, y, 9, 12);
    }
  }

  void move() {
    if (forward == true) {
      x = x + speed;
      if (x > width) {
        x = 0;
      }
    }
    if (forward == false) {
      x = x - speed;
      if (x < 0) {
        x = 700;
      }
    }
  }
}
