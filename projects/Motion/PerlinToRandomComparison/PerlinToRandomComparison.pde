/*
A comparison of lines produced by two algorithms: random number generation and Perlin noise.
*/

/********************
* Variables         *
********************/

LineGenerator straightLine;
LineGenerator randomLine;
LineGenerator perlinLine;

/********************
* Setup             *
********************/
void setup() {
  
  size(500, 500);
  frameRate(60);
  background(250);

  straightLine = new LineGenerator("straight");
  randomLine = new LineGenerator("random");
  perlinLine = new LineGenerator("perlin");
  
  straightLine.display();
  randomLine.display();
  perlinLine.display();
  
}

/********************
* Draw              *
********************/
void draw() {
 

}