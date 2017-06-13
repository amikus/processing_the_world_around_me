/*
Draws Boog, a bug-like creature
*/

Boog boog;

/***************************************************
****************************************************
* Setup                                            *
****************************************************
***************************************************/

void setup() {
  // initialize basic window conditions
  size(500, 500);
  frameRate(60);
  noCursor();
  
  // establish Boog's starting position (center of window)
  mouseX = width/2;
  mouseY = height/2;
  
  boog = new Boog(mouseX, mouseY);
}

/***************************************************
****************************************************
* Draw                                             *
****************************************************
***************************************************/

void draw() {
  
  background(255);
  boog.display();
  
}