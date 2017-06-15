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
  float headRadius;
  
  // Provided in the beginning
  
  // Provided from external sources
  float headDiameter;
   
  /**************
  * Constructor *
  ***************/
  Eye(float headDiameter) {
    
    this.headDiameter = headDiameter;
    
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
  }
  
  // Calculate derived eye values based on provided values
  void calculateEyeValues() {
    headRadius = headDiameter/2;
    eyeWidth = headRadius/2;
    eyeHeight = headRadius;
    distanceToTopOfEye = 3 * (headDiameter/4);
    distanceToLeftEye = headDiameter/6 + eyeWidth;
    distanceToRightEye = headDiameter/6;
  }
}