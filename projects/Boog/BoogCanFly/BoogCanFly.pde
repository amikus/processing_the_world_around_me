/*
Boog flies around the screen
*/

// establish colors
color black = #160f29;
color yellow = #f7c331;
color orange = #f7882f;
color red = #bf221e;
color green = #0dab76;

// Boog's variables
float boogHalfWidth = 40;      // half of Boog's width, used for edge detection
float boogHalfHeight = 60;     // half of Boog's height, used for edge detection
float boogX, boogY;            // x and y coordinates
float boogWiggle = 1;          // how much Boog wiggles
boolean boogIsFlying = false;  // whether Boog is flying
float flightSpeed = 1;         // flying speed

void setup() {
  // initialize basic window conditions
  size(500, 500);
  frameRate(60);
  noCursor();
  
  // establish Boog's starting position (center of window)
  boogX = width/2;
  boogY = height/2;
  
}

void draw() {
  background(255);
  
  /**************************
    Draw Boog
  **************************/
  
  // set CENTER and stroke mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(black);
  strokeWeight(1);
  
  translate(boogX, boogY);
  
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
  
  /**************************
    Update Boog's position
  ***************************/
  
  // if Boog collides with either edge of the window, reverse his speed
  if (boogX <= boogHalfWidth || boogX >= width-boogHalfWidth) {
    flightSpeed = -flightSpeed;
  }
  
  // don't allow Boog to move beyond the top or bottom of the window
  if (boogY <= boogHalfHeight) {
    boogY = boogHalfHeight;
  } else if (boogY >= height-boogHalfHeight) {
    boogY = height-boogHalfHeight;
  }
  
  // update Boog's y position randomly, based on degree of wiggle
  boogY += random(-boogWiggle, boogWiggle);
  
  // only update Boog's x position if flight is turned on
  if (boogIsFlying) {
    boogX += flightSpeed;
  }
}

void mousePressed() {
  boogIsFlying = !boogIsFlying;
}

void keyPressed() {
  
}