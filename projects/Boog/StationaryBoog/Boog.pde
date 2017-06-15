/********************
* Boog Class        *
********************/

class Boog {
  
  /**************
  * Variables   *
  **************/ 

  // The values listed below will be calculated later in the program
  // based on a small number of variables that are provided

  
  // Colors
  color black = #160f29;
  color yellow = #f7c331;
  color orange = #f7882f;
  color red = #bf221e;
  color green = #0dab76;
  
  float xPosition;
  float yPosition;

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

  /***************************************************
  * Draw Boog                                        *
  ***************************************************/
  
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