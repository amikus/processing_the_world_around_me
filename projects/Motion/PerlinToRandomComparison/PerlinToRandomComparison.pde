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
  
  float penSize = height/100;
  color penColor = (15); 

  straightLine = new LineGenerator(penSize, penColor, "straight");
  randomLine = new LineGenerator(penSize, penColor, "random");
  perlinLine = new LineGenerator(penSize, penColor, "perlin");
  
  straightLine.display();
  randomLine.display();
  perlinLine.display();
  
}

/********************
* Draw              *
********************/
void draw() {
 

}