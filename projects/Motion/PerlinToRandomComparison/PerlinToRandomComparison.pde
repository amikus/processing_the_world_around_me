/*
A comparison of lines produced by two algorithms: random number generation and Perlin noise.
*/

/********************
* Variables         *
********************/

LineGenerator straightLine;

/********************
* Setup             *
********************/
void setup() {
  
  size(500, 500);
  frameRate(60);
  background(250);

  straightLine = new LineGenerator();
  
  straightLine.display();
  
}

/********************
* Draw              *
********************/
void draw() {
 

}