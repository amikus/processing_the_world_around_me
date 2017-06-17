/********************
* Boog Class        *
********************/

class Boog {
  
  /**************
  * Variables   *
  **************/ 
  
  // Colors
  color black = #160f29;
  color yellow = #f7c331;
  color orange = #f7882f;
  color red = #bf221e;
  color green = #0dab76;
  
  // Positions
  float xPosition;
  float yPosition;

  // Objects
  Body body;

  /**************
  * Constructor *
  ***************/
  
  Boog(float xPosition, float yPosition){
    
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    
    body = new Body();
    
  }
  
  /**************
  * Methods     *
  ***************/
  
  // Display Boog to the screen
  void display() {
    // set CORNER and stroke mode
    ellipseMode(CORNER);
    rectMode(CORNER);
    stroke(black);
    strokeWeight(1);
    
    translate(mouseX, mouseY);
   
    body.display();
    
  }

}