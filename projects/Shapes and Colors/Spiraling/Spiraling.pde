/*
Draws a spiral using polar coordinates
*/

/********************
* Variables         *
********************/

CartesianPoint centerOfScreen;

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
  spiral = new Spiral(centerOfScreen, penSize, penColor);
}

/********************
* Draw              *
********************/

void draw() {

  spiral.display();
  
}

/********************
* Other Methods     *
********************/