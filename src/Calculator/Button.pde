class Button {
  //Member Variables
  int x, y, w, h, a, b, c, s;
  color c1, c2, c3, c4;
  String val;
  boolean over, pressed;

  //Constructor
  Button(int x, int y, int w, int h, int a, int b, int c, int s, String val, color c1, color c2, color c3, color c4) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1 = c1;
    this.c2 = c2;
    this.c3 = c3;
    this.a = a;
    this.b = b;
    this.c = c;
    this.s = s;
    this.c4 = c4;
    over = false;
    pressed = false;
  }

  //Member Methods
  void display () {
    rectMode(CENTER);
    stroke(#bececf);
    fill(#bececf);
    rect(x-3, y+3, w, h, 10);
    if (pressed == true) {
      fill(c4);
      stroke(c3);
    } else if (over == true) {
      fill(c2);
      stroke(c3);
    } else if (mouseX+mouseY>=200 ) {
      fill(c1);
      stroke(mouseX-a, mouseY-b, mouseX-c+mouseY-c);
    } else {
      fill(c1);
      stroke(c1);
    }
    strokeWeight(1);
    rect(x, y, w, h, 10);
    if (over == true) {
      fill(c3);
    } else {
      fill(mouseX-a, mouseY-b, mouseX-c+mouseY-c);
    }
    textAlign(CENTER, CENTER);
    textSize(s);
    text(val, x-1, y+1);
    fill(255);
    text(val, x, y);
  }

  void hover(int tempX, int tempY) {
    if (x>tempX-w/2 && x<tempX+w/2 && y>tempY-h/2 && y<tempY+h/2) {
      over = true;
    } else {
      over = false;
    }
  }

  void buttonPress () {
    if (mousePressed == true && x>mouseX-w/2 && x<mouseX+w/2 && y>mouseY-h/2 && y<mouseY+h/2) {
      pressed = true;
    } else {
      pressed = false;
    }
  }
}
