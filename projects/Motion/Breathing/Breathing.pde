/*
A single circle increases and decreases in size based on a sine wave which is mapped to its diameter.
*/

/********************
* Variables         *
********************/

Oscillator circle;

/********************
* Setup             *
********************/
void setup() {
  
  size(500, 500);
  frameRate(60);
  
  Point location = new Point(width/2, height/2);
  float rate = 0.025;
  float minimumDiameter = height/4;
  float maximumDiameter = height/2;
  
  circle = new Oscillator(location, rate, minimumDiameter, maximumDiameter);
  
}

/********************
* Draw              *
********************/
void draw() {
 
  background(230);
  
  circle.display();
  circle.oscillate();
    
}