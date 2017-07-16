/*
Draws a spiral using polar coordinates
*/

/********************
* Variables         *
********************/

Spiral[] spiralArray;

int penSize;
int penColor;

/********************
* Setup             *
********************/
void setup() {
  
  // initialize window conditions
  size(500, 500);
  frameRate(60);
  background(255);
  
  // find various points on screen
  CartesianPoint centerOfScreen = new CartesianPoint(width/2, height/2);
  
  // establish size and color of ellipses that will be used for drawing
  penSize = width / 15;
  penColor = 0;
  
  // create spirals
  spiralArray = new Spiral[1];
   
  spiralArray[0] = new Spiral(centerOfScreen, penSize, penColor);
}

/********************
* Draw              *
********************/

void draw() {

  for (int i = 0; i < spiralArray.length; i++) {
    spiralArray[i].display();
  }
  
}

/********************
* Other Methods     *
********************/