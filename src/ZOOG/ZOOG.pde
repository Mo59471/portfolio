// Zoog Character | Mo Spiegel | 8/26/2025 | 3B
void setup () {
  //Set the size of the window (changed to 800 x 800)
  size(800,800);
  background(0,0,64);
}

void draw () {
  drawZoog(mouseX+80, mouseY+80);   
  drawZoog(mouseX-80, mouseY-80); 
  drawZoog(mouseX+50, mouseY+50);   
  drawZoog(mouseX-50, mouseY-50);   
  drawZoog(mouseX+30, mouseY+30);   
  drawZoog(mouseX-30, mouseY-30); 
  drawZoog(mouseX, mouseY);
  
  //Background text - Element 1
  textSize(200);
  text("ZOOG",120,450);
}

void drawZoog(int x, int y) {
   //Set CENTER Mode
  ellipseMode(CENTER);
  rectMode(CENTER);
    
  //Draw Zoog's body
  strokeWeight(3);
  stroke(x,y,y-x);
  fill(x-350,y-350,x+y-350);
  rect(x,y,20,100);
    
  //Draw Zoog's hair - Element 2
  stroke(x-350,y-350,x+y-350);
  fill(x-350,y-350,x+y-350);
  ellipse(x,y-60,60,30);
    
  //Draw Zoog's head
  stroke(x-100,y-100,x-y-100);
  fill(x-300,y-300,x+y-300);
  ellipse(x,y-30,60,60);
    
  //Draw Zoog's eyes
  fill(x-40,y-40,x+y-40);
  ellipse(x-15,y-30,16,32); //Left Eye
  ellipse(x+15,y-30,16,32); //Right Eye
    
  //Draw Zoog's legs
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
  
  //Draw Zoog's Eyebrows - Element 3
  strokeWeight(5);
  stroke(x-400,y-400,x+y-400);
  line(x-25,y-50,x-6,y-40);
  line(x+25,y-50,x+6,y-40);
  
  //Draw Zoog's Mouth - Element 4
  strokeWeight(3);
  stroke(x-400,y-400,x+y-400);
  rect(x,y-10,10,10,10,10,10,10);
  
  fill(x-300,y-300,x+y-300);
}
