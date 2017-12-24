/*
Draws one of several recursive patterns
*/

/********************
* Variables         *
********************/

Pattern[] patternArray;

int penSize;
int penColor;

float startingRadius;      // radius of starting ellipse

int currentPatternNumber;  // current pattern number, to be cycled using click

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
  currentPatternNumber = 0;
  
  
  // load the patterns into the array
  patternArray[0] = new Pattern("Concentric", centerOfScreen, startingRadius, penSize, penColor);
  patternArray[1] = new Pattern("Row", centerOfScreen, startingRadius, penSize, penColor);
  patternArray[2] = new Pattern("Cross", centerOfScreen, startingRadius, penSize, penColor);
  
}

/********************
* Draw              *
********************/

void draw() {

  patternArray[currentPatternNumber].display();
  
}

/********************
* Other Methods     *
********************/