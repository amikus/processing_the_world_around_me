/*
A series of pendulums swing from side to side.
*/

/********************
* Variables         *
********************/

Oscillator pendulum;

/********************
* Setup             *
********************/
void setup() {
  
  size(500, 500);
  frameRate(60);
  
  float pendulumSize = width/10;
  pendulum = new Oscillator(pendulumSize, 0.05, 0.05, 0, height*0.5);
}

/********************
* Draw              *
********************/
void draw() {
 
  background(230);

  pendulum.display();
  pendulum.oscillate();
  
  
}