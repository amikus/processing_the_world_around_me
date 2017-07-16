/*
Draws a spiral using polar coordinates
*/

/********************
* Variables         *
********************/

CartesianPoint centerOfScreen;
PolarPoint startingPoint;

int penSize;
Spiral spiral;
color penColor;

/********************
* Setup             *
********************/
void setup() {
  
  // initialize window conditions
  size(500, 500);
  frameRate(60);
  background(255);
  
  // find center of screen
  centerOfScreen = new CartesianPoint(width/2, height/2);
  
  // establish size and color of ellipses that will be used for drawing
  penSize = width / 15;
  penColor = 0;
  
  // create spiral
  startingPoint = new PolarPoint(75, 0);
  spiral = new Spiral(startingPoint, penSize, penColor);
}

/********************
* Draw              *
********************/

void draw() {
  noStroke();
  fill(0);
  
  ellipse(centerOfScreen.xCoordinate, centerOfScreen.yCoordinate, penSize, penSize);
  
}

/********************
* Other Methods     *
********************/