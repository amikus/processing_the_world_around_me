/*
Generates a trail that follows the mouse cursor
*/

/********************
* Variables         *
********************/
int[] xPositions = new int[50];
int[] yPositions = new int[50];

/********************
* Setup             *
********************/
void setup() {
  
  background(0);
  size(500, 500);
  
  // initialize coordinate array
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = 0;
    yPositions[i] = 0;
  }
  
}

/********************
* Draw              *
********************/
void draw() {
 
  background(0);
  stroke(0);
  
  fill(255);
  
  updatePositionArrays();
  
  for (int i = 0; i < xPositions.length; i++) {
    ellipse(xPositions[i], yPositions[i], 35, 35);
  }
  
}

void updatePositionArrays() {

  // shift each position in array by 1
  for (int i = 0; i < xPositions.length-1; i++) {    
    xPositions[i] = xPositions[i+1];
    yPositions[i] = yPositions[i+1];
  }
  
  // update final position in array to be current mouse possition
  xPositions[xPositions.length - 1] = mouseX;
  yPositions[xPositions.length - 1] = mouseY;
  

}