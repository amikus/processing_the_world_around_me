/********************
* Leg Class        *
********************/

class Leg {

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
  float halfBodyWidth;
  float halfBodyHeight;
  float xBaseOfAllLegs;
  float yBaseOfTopLeg;
  float xTipOfElbow;
  float yTipOfElbow;
  float xTipOfTopLeg;
  float yTipOfTopLeg;
  float yBaseOfMidLeg;
  float yBaseOfBottomLeg;
  float xTipOfMidAndBottomLeg;
  float yTipOfMidLeg;
  float yTipOfBottomLeg;
  
  // Provided in the beginning

  // Passed in from external sources
  float bodyWidth;
  float bodyHeight;
  
  // Other body parts needed to draw leg
  Foot foot;
  
  /**************
  * Constructor *
  ***************/
  Leg(float bodyWidth, float bodyHeight) {
    
    this.bodyWidth = bodyWidth;
    this.bodyHeight = bodyHeight;
    
    calculateLegValues();
    
    foot = new Foot(xTipOfTopLeg, yTipOfTopLeg, xTipOfMidAndBottomLeg, yTipOfMidLeg, yTipOfBottomLeg);
    
  }
  
  /**************
  * Methods     *
  ***************/
  
  // Display legs
  void display() {
    
    fill(black);
    strokeWeight(2);
    
    // top
    line(-xBaseOfAllLegs, yBaseOfTopLeg, -xTipOfElbow, yTipOfElbow);
    line(-xTipOfElbow, yTipOfElbow, -xTipOfTopLeg, yTipOfTopLeg);
    line(xBaseOfAllLegs, yBaseOfTopLeg, xTipOfElbow, yTipOfElbow);
    line(xTipOfElbow, yTipOfElbow, xTipOfTopLeg, yTipOfTopLeg);
    // middle
    line(-xBaseOfAllLegs, yBaseOfMidLeg, -xTipOfMidAndBottomLeg, yTipOfMidLeg);
    line(xBaseOfAllLegs, yBaseOfMidLeg, xTipOfMidAndBottomLeg, yTipOfMidLeg);
    // bottom
    line(-xBaseOfAllLegs, yBaseOfBottomLeg, -xTipOfMidAndBottomLeg, yTipOfBottomLeg);
    line(xBaseOfAllLegs, yBaseOfBottomLeg, xTipOfMidAndBottomLeg, yTipOfBottomLeg);
    
    foot.display();
    
  }
  
  // Calculate derived leg values based on provided values
  void calculateLegValues() {
    halfBodyWidth = bodyWidth/2;
    halfBodyHeight = bodyHeight/2;
    xBaseOfAllLegs = halfBodyWidth;
    yBaseOfTopLeg = bodyHeight/20;
    xTipOfElbow = halfBodyWidth + halfBodyWidth/2;
    yTipOfElbow = yBaseOfTopLeg + halfBodyWidth;
    xTipOfTopLeg = halfBodyWidth/2;
    yTipOfTopLeg = yTipOfElbow + halfBodyWidth;
    yBaseOfMidLeg = halfBodyHeight/2;
    yBaseOfBottomLeg = halfBodyHeight;
    xTipOfMidAndBottomLeg = halfBodyWidth + halfBodyWidth;
    yTipOfMidLeg = yBaseOfMidLeg + halfBodyWidth;
    yTipOfBottomLeg = yBaseOfBottomLeg + halfBodyWidth;
  }
  
}