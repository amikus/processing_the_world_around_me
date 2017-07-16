/*
Draws a spiral using polar coordinates
*/

/********************
* Variables         *
********************/

float halfWidth;
float halfHeight;
int penSize;

/********************
* Setup             *
********************/
void setup() {
  
  // initialize window conditions
  size(500, 500);
  frameRate(60);
  background(255);
  
  // locate middle of screen
  halfWidth = width / 2;
  halfHeight = height / 2;
  
  // establish size of ellipses that will be used for drawing
  penSize = width / 15;
}

/********************
* Draw              *
********************/

void draw() {
  noStroke();
  fill(0);
  
  ellipse(halfWidth, halfHeight, penSize, penSize);
  
}

/********************
* Other Methods     *
********************/