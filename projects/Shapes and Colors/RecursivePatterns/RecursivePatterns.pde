/*
Draws one of several recursive patterns
*/

/********************
* Variables         *
********************/

Pattern[] patternArray;

int penSize;
int penColor;

float startingRadius;   // radius of starting ellipse

int patternNumber;      // current pattern number, to be cycled using mouse click
int maxPatternIndex;    // number of indexes required by pattern array

/********************
* Setup             *
********************/
void setup() {
  
  // initialize window conditions
  size(500, 500);
  frameRate(60);
  background(255);

  // establish line width and color of ellipses that will be used for drawing
  penSize = width / 15;
  penColor = 0;

  // establish ellipse characteristics
  CartesianPoint centerOfScreen = new CartesianPoint(width/2, height/2);
  startingRadius = width/2.0;

  // create pattern array and establish starting pattern
  patternArray = new Pattern[3];
  patternNumber = 0;
  
  // load the patterns into the array
  maxPatternIndex = 2;
  patternArray[0] = new Pattern("Concentric", centerOfScreen, startingRadius, penSize, penColor);
  patternArray[1] = new Pattern("Row", centerOfScreen, startingRadius, penSize, penColor);
  patternArray[2] = new Pattern("Cross", centerOfScreen, startingRadius, penSize, penColor);
  
}

/********************
* Draw              *
********************/

void draw() {

  patternArray[patternNumber].display();
  
}

/********************
* Other Methods     *
********************/

void mousePressed() {
  // loop through the images when the mouse button is clicked
  if (patternNumber == maxPatternIndex) {
    patternNumber = 0;
  } else {
    patternNumber++;
  }
}