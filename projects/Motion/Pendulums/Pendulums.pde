/*
A series of pendulums swing from side to side.
*/

/********************
* Variables         *
********************/
float theta = 0;

/********************
* Setup             *
********************/
void setup() {
  
  background(0);
  size(500, 500);
  
}

/********************
* Draw              *
********************/
void draw() {
 
  background(255);
  
  float x = map(sin(theta), -1, 1, 0, 500);
  
  // with each cycle increment theta
  theta += 0.05;
  
  // draw the ellipse at the value produced by sine
  fill(0);
  stroke(0);
  line(width/2, 0, x, height/2);
  ellipse(x, height/2, 16, 16);
  
}