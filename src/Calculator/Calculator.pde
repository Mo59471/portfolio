//Mo Spiegel | 25 September 2025 | Calculator | 3B

//Create empty buttons
Button[] buttons = new Button[12];
Button[] numButtons = new Button[10];

String dVal;
float l, r;
String op, result;
boolean left;
float z;

void setup () {
  size(380, 600);
  background(#f2ffff);

  l = 0; //First number input
  r = 0; //Second number input
  result ="0"; //Result after operation
  op = ""; //Acting operator
  left = true; //Determines whether l or r is being inputted
  dVal = "0.0"; //Value displayed

  //Set button parameters
  buttons[0] = new Button(320, 60, 80, 80, 2000, 100, 50, 80, "+", #76a1a3, #59797a, #03fff7, #3f5657);
  buttons[1] = new Button(320, 160, 80, 80, 2000, 100, 50, 80, "−", #76a1a3, #59797a, #03fff7, #3f5657);
  buttons[2] = new Button(320, 260, 80, 80, 2000, 100, 50, 80, "×", #76a1a3, #59797a, #03fff7, #3f5657);
  buttons[3] = new Button(320, 360, 80, 80, 2000, 100, 50, 80, "÷", #76a1a3, #59797a, #03fff7, #3f5657);
  buttons[4] = new Button(310, 440, 100, 40, 400, 400, 0, 30, "clear", #565761, #3b3c42, #00daf7, #2d2e33);
  buttons[5] = new Button(280, 500, 40, 40, 400, 400, 0, 30, "ln", #565761, #3b3c42, #00daf7, #2d2e33);
  buttons[6] = new Button(340, 500, 40, 40, 400, 400, 0, 30, "√", #565761, #3b3c42, #00daf7, #2d2e33);
  buttons[7] = new Button(280, 560, 40, 40, 400, 400, 0, 30, "^", #565761, #3b3c42, #00daf7, #2d2e33);
  buttons[8] = new Button(340, 560, 40, 40, 400, 400, 0, 30, "!", #565761, #3b3c42, #00daf7, #2d2e33);
  numButtons[0] = new Button(50, 440, 60, 40, 100, 2000, 100, 30, "1", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[1] = new Button(130, 440, 60, 40, 100, 2000, 100, 30, "2", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[2] = new Button(210, 440, 60, 40, 100, 2000, 100, 30, "3", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[3] = new Button(50, 500, 60, 40, 100, 2000, 100, 30, "4", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[4] = new Button(130, 500, 60, 40, 100, 2000, 100, 30, "5", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[5] = new Button(210, 500, 60, 40, 100, 2000, 100, 30, "6", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[6] = new Button(50, 560, 60, 40, 100, 2000, 100, 30, "7", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[7] = new Button(130, 560, 60, 40, 100, 2000, 100, 30, "8", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[8] = new Button(210, 560, 60, 40, 100, 2000, 100, 30, "9", #426569, #2d4547, #f700da, #1f2f30);
  numButtons[9] = new Button(50, 380, 60, 40, 100, 2000, 100, 30, "0", #426569, #2d4547, #f700da, #1f2f30);
  buttons[9] = new Button(210, 380, 60, 40, 100, 2000, 100, 30, ".", #426569, #2d4547, #f700da, #1f2f30);
  buttons[10] = new Button(130, 380, 60, 40, 2000, 100, 50, 35, "±", #50bab0, #2f9686, #03fff7, #267569);
  buttons[11] = new Button(140, 320, 100, 40, 2000, 100, 50, 40, "=", #50bab0, #2f9686, #03fff7, #267569);
}

void draw () {
  background(#f2ffff);
  stroke(#afcacc, 100);
  fill(#afcacc, 100);
  rectMode(CENTER);
  rect(319, 210, 100, 395, 20);
  rect(130, 470, 240, 230, 20);
  for (int i = 0; i<buttons.length; i = i + 1) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
    buttons[i].buttonPress();
  }
  for (int i = 0; i<numButtons.length; i = i + 1) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
    numButtons[i].buttonPress();
  }
  updateDisplay();
  textAlign(CENTER);
  textSize(20);
  fill(#bececf);
  text("S U M S A N G", 139, 31);
  fill(#0d478f);
  text("S U M S A N G", 140, 30);
}

void mouseReleased () {
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      left = false;
      op = "+";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("clear")) {
      l = 0;
      r = 0;
      result ="0.0";
      op = "";
      left = true;
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("−")) {
      left = false;
      op = "−";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("×")) {
      left = false;
      op = "*";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      left = false;
      op = "/";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("±")) { //Press the number you want to change the sign of and then "±"
      if (left == true) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("^")) {
      left = false;
      op = "^";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("!")) { //Calculates factorial
      left = true;
      op = "!";
      dVal = str(l) + "!";
    } else if (buttons[i].over && buttons[i].val.equals("ln")) { //Press the number you want to take the natural logarithm of first, and then "ln"
      if (left == true) {
        dVal = "ln(" + str(l);
        l = log(l);
      } else {
        dVal = "ln(" + str(r);
        r = log(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val.equals("√")) { //Press the number you want to take the square root of first, and then "√"
      if (left == true) {
        dVal = "√" + str(l);
        l = sqrt(l);
      } else {
        dVal = "√" + str(r);
        r = sqrt(r);
      }
    }
  }

  //Logic for number inputs
  for (int i = 0; i<numButtons.length; i ++) {
    if (dVal.contains("ln(") == false && dVal.contains("√") == false) {
    if (numButtons[i].over == true && left == true) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          l = float(dVal);
        } else {
          dVal += numButtons[i].val;
          l = float(dVal);
        }
      } else if (numButtons[i].over == true && left == false) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          r = float(dVal);
        } else {
          dVal += numButtons[i].val;
          r = float(dVal);
        }
      }
    }
  }

  //Record parameters
  println("l:" + l);
  println("r:" + r);
  println("op:" + op);
  println("result:" + result);
  println("left:" + left);
}

void updateDisplay() {

  //Display window
  rectMode(CENTER);
  stroke(#bececf);
  fill(#bececf);
  beginShape();
  vertex(56, 264);
  vertex(216, 264);
  vertex(216, 344);
  vertex(196, 284);
  vertex(76, 284);
  vertex(56, 344);
  endShape(CLOSE);
  rect(36, 304, 40, 80, 0, 0, 0, 20);
  rect(236, 304, 40, 80, 0, 0, 20, 0);
  rect(136, 154, 240, 220, 20, 20, 0, 0);
  stroke(#93acad);
  fill(#93acad);
  beginShape();
  vertex(60, 260);
  vertex(220, 260);
  vertex(220, 340);
  vertex(200, 280);
  vertex(80, 280);
  vertex(60, 340);
  endShape(CLOSE);
  rect(40, 300, 40, 80, 0, 0, 0, 20);
  rect(240, 300, 40, 80, 0, 0, 20, 0);
  rect(140, 150, 240, 220, 20, 20, 0, 0);
  fill(255);
  stroke(255);
  beginShape();
  vertex(58, 256);
  vertex(222, 256);
  vertex(222, 336);
  vertex(202, 276);
  vertex(78, 276);
  vertex(58, 336);
  endShape(CLOSE);
  rect(40, 298, 34, 78, 0, 0, 0, 20);
  rect(240, 298, 34, 78, 0, 0, 20, 0);
  rect(140, 152, 234, 218, 20, 20, 0, 0);
  textAlign(LEFT);
  textSize(50);
  rectMode(CORNER);

  //Output
  fill(#bececf);
  text(dVal, 39, 58, 200, 200);
  fill(#0d478f);
  text(dVal, 40, 56, 200, 200);
}

//Logic for calculator operations
void performCalculation() {
  if (op.equals("+")) {
    result = str(l + r);
  } else if (op.equals("−")) {
    result = str(l - r);
  } else if (op.equals("*")) {
    result = str(l * r);
  } else if (op.equals("/")) {
    result = str(l/r);
  } else if (op.equals("")) {
    result = str(l);
  } else if (op.equals("^")) {
    result = str(pow(l, r));
  } else if (op.equals("!")) {
    z = l;
    if (l == int(l) && l>0) {
      for (int i = 1; i < l; i ++) {
        z = z * (l - i);
        result = str(z);
      }
    } else if (l ==0) {
      z = 1;
      result = str(z);
    } else {
      result = "ERROR";
    }
  } else if (op.equals("ln")) {
    if (l ==0) {
      result = "ERROR";
    } else {
      result = str(log(l));
    }
  }
  dVal = result;
  l = float(result);
  r = 0;
  op = "";
}
