// establish colors
color black = #160f29;
color yellow = #f7c331;
color orange = #f7882f;
color red = #bf221e;
color green = #0dab76;

void setup() {
  size(500, 500);
  frameRate(60);
  noCursor();
  
}

void draw() {
  background(255);
  
  // set CENTER and stroke mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(black);
  strokeWeight(1);
  
  // Draw Boog's wings
  // left wing
  fill(yellow);
  triangle(mouseX-30, mouseY-10, mouseX, mouseY-10, mouseX, mouseY+30);
  triangle(mouseX-10, mouseY, mouseX-40, mouseY+30, mouseX, mouseY+30);
  fill(orange);
  triangle(mouseX-10, mouseY, mouseX-30, mouseY+20, mouseX-10, mouseY+20);
  fill(red);
  triangle(mouseX-10, mouseY, mouseX-20, mouseY+10, mouseX-10, mouseY+10);
  // right wing
  fill(yellow);
  triangle(mouseX+30, mouseY-10, mouseX, mouseY-10, mouseX, mouseY+30);
  triangle(mouseX+10, mouseY, mouseX+40, mouseY+30, mouseX, mouseY+30);
  fill(orange);
  triangle(mouseX+10, mouseY, mouseX+30, mouseY+20, mouseX+10, mouseY+20);
  fill(red);
  triangle(mouseX+10, mouseY, mouseX+20, mouseY+10, mouseX+10, mouseY+10);
  
  // Draw Boog's body
  strokeWeight(2);
  fill(green);
  rect(mouseX, mouseY, 20, 100);
  
  // Draw Boog's head
  strokeWeight(2);
  fill(green);
  ellipse(mouseX, mouseY-30, 60, 60);
  line(mouseX-30, mouseY-60, mouseX-20, mouseY-70);
  line(mouseX-20, mouseY-70, mouseX-10, mouseY-60);
  strokeWeight(1);
  fill(black);
  ellipse(mouseX-30, mouseY-60, 5, 5);
  strokeWeight(2);
  line(mouseX+30, mouseY-60, mouseX+20, mouseY-70);
  line(mouseX+20, mouseY-70, mouseX+10, mouseY-60);
  fill(black);
  ellipse(mouseX+30, mouseY-60, 5, 5);
  
  // Draw Boog's eyes
  strokeWeight(1);
  fill(black);
  ellipse(mouseX-19, mouseY-30, 16, 32);
  ellipse(mouseX+19, mouseY-30, 16, 32);
  
  // Draw Boog's arms/legs

  fill(black);
  
  // top
  strokeWeight(2);
  line(mouseX-10, mouseY+5, mouseX-15, mouseY+15);
  line(mouseX-15, mouseY+15, mouseX-5, mouseY+20);
  strokeWeight(1);
  ellipse(mouseX-5, mouseY+20, 5, 5);
  strokeWeight(2);
  line(mouseX+10, mouseY+5, mouseX+15, mouseY+15);
  line(mouseX+15, mouseY+15, mouseX+5, mouseY+20);
  strokeWeight(1);
  ellipse(mouseX+5, mouseY+20, 5, 5);
  
  // middle
  strokeWeight(2);
  line(mouseX-10, mouseY+25, mouseX-20, mouseY+35);
  line(mouseX+10, mouseY+25, mouseX+20, mouseY+35);
  strokeWeight(1);
  ellipse(mouseX-20, mouseY+35, 5, 5);
  ellipse(mouseX+20, mouseY+35, 5, 5);
  
  // bottom
  strokeWeight(2);
  line(mouseX-10, mouseY+50, mouseX-20, mouseY+60);
  line(mouseX+10, mouseY+50, mouseX+20, mouseY+60);
  strokeWeight(1);
  ellipse(mouseX-20, mouseY+60, 5, 5);
  ellipse(mouseX+20, mouseY+60, 5, 5);
  
}

void mousePressed() {
  
}

void keyPressed() {
  
}