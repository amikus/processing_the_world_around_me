/*
Generates a trail that follows the mouse cursor
*/

/********************
* Variables         *
********************/
Trail trail;

/********************
* Setup             *
********************/
void setup() {
  
  background(0);
  size(500, 500);
  
  trail = new Trail(50, 255, 35);
  
}

/********************
* Draw              *
********************/
void draw() {
 
  background(0);
  trail.display();
  
}