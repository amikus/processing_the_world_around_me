/********************
* Eye Class        *
********************/

class Eye {

  /**************
  * Variables   *
  **************/
  
  // Colors
  color black = #160f29;
  color yellow = #f7c331;
  color orange = #f7882f;
  color red = #bf221e;
  color green = #0dab76;
    
  // To be calculated later
  float eyeWidth;
  float eyeHeight;
  float distanceToTopOfEye;
  float distanceToLeftEye;
  float distanceToRightEye;
  float xLeftEyeCenter;
  float yLeftEyeCenter;
  float xRightEyeCenter;
  float yRightEyeCenter;
  float headRadius;
  
  // Provided in the beginning
  
  // Provided from external sources
  float headDiameter;
  float bodyXPosition;    // x position of body, used to accurately fire laser
  float bodyYPosition;    // y position of body, used to accurately fire laser
  
  /**************
  * Constructor *
  ***************/
  Eye(float headDiameter, float bodyXPosition, float bodyYPosition) {
    
    this.headDiameter = headDiameter;
    this.bodyXPosition = bodyXPosition;
    this.bodyYPosition = bodyYPosition;
    
    calculateEyeValues();
    
  }
  
  /**************
  * Methods     *
  ***************/

  // Display eyes
  void display() {
    strokeWeight(1);
    fill(black);
    ellipse(-distanceToLeftEye, -distanceToTopOfEye, eyeWidth, eyeHeight);
    ellipse(distanceToRightEye, -distanceToTopOfEye, eyeWidth, eyeHeight);
    
    fireLaser();
  }
  
  // Calculate derived eye values based on provided values
  void calculateEyeValues() {
    headRadius = headDiameter/2;
    eyeWidth = headRadius/2;
    eyeHeight = headRadius;
    distanceToTopOfEye = 3 * (headDiameter/4);
    distanceToLeftEye = headDiameter/6 + eyeWidth;
    distanceToRightEye = headDiameter/6;
    xLeftEyeCenter = distanceToLeftEye - eyeWidth/2;
    yLeftEyeCenter = distanceToTopOfEye - eyeHeight/2;
    xRightEyeCenter = distanceToRightEye + eyeWidth/2;
    yRightEyeCenter = distanceToTopOfEye - eyeHeight/2;
  }
 
  // update body position, which eye needs to know about for purposes of firing laser
  void updatePosition(float bodyXPosition, float bodyYPosition){
    
    this.bodyXPosition = bodyXPosition;
    this.bodyYPosition = bodyYPosition;
    
  } 
 
  // When right mouse button is depressed, draw lasers from
  // Boog's eyes to the mouse pointer
  void fireLaser() {
    if (mousePressed && mouseButton == RIGHT) {
      stroke(red);
      line (-xLeftEyeCenter, -yLeftEyeCenter, mouseX-bodyXPosition, mouseY-bodyYPosition);
      line (xRightEyeCenter, -yRightEyeCenter, mouseX-bodyXPosition, mouseY-bodyYPosition);
    }     
  }
  
}