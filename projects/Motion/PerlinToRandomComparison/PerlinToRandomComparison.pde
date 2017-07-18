/*
A series of pendulums swing from side to side.
*/

/********************
* Variables         *
********************/

Oscillator[] oscillatorArray;

/********************
* Setup             *
********************/
void setup() {
  
  size(500, 500);
  frameRate(60);
  
  oscillatorArray = new Oscillator[3];

  for (int i = 0; i < oscillatorArray.length; i++) {
    
    float diameter = random(width/25, width/15);   // diameter of oscillator
    float xTheta = random(0.03, 0.1);              // used for calculating x position over time
    float yTheta = random(0.03, 0.1);              // used for calculating y position over time
    float xStart = random(0, width);               // leftmost point of oscillator
    float yStart = random(0, height);              // topmost point of oscillator
    
    oscillatorArray[i] = new Oscillator(diameter, xTheta, yTheta, xStart, yStart);  
  }
  
  
}

/********************
* Draw              *
********************/
void draw() {
 
  background(230);

  for (int i = 0; i < oscillatorArray.length; i++) {
    oscillatorArray[i].display();
    oscillatorArray[i].oscillate();  
  }
  
  
  
}