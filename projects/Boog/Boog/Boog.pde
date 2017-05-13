/*
Draws Boog, a bug-like creature
*/

// establish colors
color black = #160f29;
color yellow = #f7c331;
color orange = #f7882f;
color red = #bf221e;
color green = #0dab76;

void setup() {
  // initialize basic window conditions
  size(500, 500);
  frameRate(60);
  noCursor();
  
  // establish Boog's starting position (center of window)
  mouseX = width/2;
  mouseY = height/2;
  
}

void draw() {
  background(255);
  
  // set CENTER and stroke mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(black);
  strokeWeight(1);
  
  translate(mouseX, mouseY);
  
  
  // Draw Boog's wings
  // left wing
  fill(yellow);
  triangle(-30, -10, 0, -10, 0, 30);
  triangle(-10, 0, -40, 30, 0, 30);
  fill(orange);
  triangle(-10, 0, -30, 20, -10, 20);
  fill(red);
  triangle(-10, 0, -20, 10, -10, 10);
  // right wing
  fill(yellow);
  triangle(30, -10, 0, -10, 0, 30);
  triangle(10, 0, 40, 30, 0, 30);
  fill(orange);
  triangle(10, 0, 30, 20, 10, 20);
  fill(red);
  triangle(10, 0, 20, 10, 10, 10);
  
  // Draw Boog's body
  strokeWeight(2);
  fill(green);
  rect(0, 0, 20, 100);
  
  // Draw Boog's head
  strokeWeight(2);
  fill(green);
  ellipse(0, -30, 60, 60);
  line(-30, -60, -20, -70);
  line(-20, -70, -10, -60);
  strokeWeight(1);
  fill(black);
  ellipse(-30, -60, 5, 5);
  strokeWeight(2);
  line(30, -60, 20, -70);
  line(20, -70, 10, -60);
  fill(black);
  ellipse(30, -60, 5, 5);
  
  // Draw Boog's eyes
  strokeWeight(1);
  fill(black);
  ellipse(-19, -30, 16, 32);
  ellipse(19, -30, 16, 32);
  
  // Draw Boog's arms/legs

  fill(black);
  
  // top
  strokeWeight(2);
  line(-10, 5, -15, 15);
  line(-15, 15, -5, 20);
  strokeWeight(1);
  ellipse(-5, 20, 5, 5);
  strokeWeight(2);
  line(10, 5, 15, 15);
  line(15, 15, 5, 20);
  strokeWeight(1);
  ellipse(5, 20, 5, 5);
  
  // middle
  strokeWeight(2);
  line(-10, 25, -20, 35);
  line(10, 25, 20, 35);
  strokeWeight(1);
  ellipse(-20, 35, 5, 5);
  ellipse(20, 35, 5, 5);
  
  // bottom
  strokeWeight(2);
  line(-10, 50, -20, 60);
  line(10, 50, 20, 60);
  strokeWeight(1);
  ellipse(-20, 60, 5, 5);
  ellipse(20, 60, 5, 5);
  
}

void mousePressed() {
  
}

void keyPressed() {
  
}