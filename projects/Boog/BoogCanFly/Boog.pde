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
  float xPosition, yPosition;    // x and y coordinates
  float wiggleFactor;            // how much Boog wiggles
  
  // Objects
  Body body;
  
  // Flight
  boolean isFlying;              // whether Boog is flying
  float flightSpeed;             // flying speed
  
  // Edge detection
  float hitboxHalfWidth;         // half of Boog's width, used for edge detection
  float hitboxHalfHeight;        // half of Boog's height, used for edge detection

  /**************
  * Constructor *
  ***************/
  Boog(float xPosition, float yPosition, float wiggleFactor, boolean isFlying, float flightSpeed){
    
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    this.wiggleFactor = wiggleFactor;
    this.isFlying = isFlying;
    this.flightSpeed = flightSpeed;
    
    // currently, these values are provided explicitly, but ideally these will be calculated
    this.hitboxHalfWidth = 40;
    this.hitboxHalfHeight = 60;
    
    body = new Body(xPosition, yPosition);
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
    
    translate(xPosition, yPosition);
   
    body.display();
    
  }
  
  // Calculate Boog's new (x,y) position
  void updatePosition() {
    
    // if Boog collides with either edge of the window, reverse his speed
    if (xPosition <= hitboxHalfWidth || xPosition >= width-hitboxHalfWidth) {
      flightSpeed = -flightSpeed;
    }
    
    // don't allow Boog to move beyond the top or bottom of the window
    if (yPosition <= hitboxHalfHeight) {
      yPosition = hitboxHalfHeight;
    } else if (yPosition >= height-hitboxHalfHeight) {
      yPosition = height-hitboxHalfHeight;
    }
    
    // update Boog's y position randomly, based on degree of wiggle
    yPosition += random(-wiggleFactor, wiggleFactor);
    
    // only update Boog's x position if flight is turned on
    if (isFlying) {
      xPosition += flightSpeed;
    }
    
    body.updatePosition(xPosition, yPosition);
  }

}