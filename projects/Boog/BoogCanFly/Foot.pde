/********************
* Foot Class        *
********************/

class Foot {

  /**************
  * Variables   *
  **************/
  // Colors
  color black = #160f29;
  color yellow = #f7c331;
  color orange = #f7882f;
  color red = #bf221e;
  color green = #0dab76;
  
  // To be calculated later;
  float footRadius;
  float xLeftTopFoot;
  float xRightTopFoot;
  float yTopFoot;
  float xLeftMidAndBottomFoot;
  float xRightMidAndBottomFoot;
  float yMidFoot;
  float yBottomFoot;
  
  // Provided in the beginning
  float footDiameter = 6;
  
  // Passed in from external sources
  float xTipOfTopLeg;
  float yTipOfTopLeg;
  float xTipOfMidAndBottomLeg;
  float yTipOfMidLeg;
  float yTipOfBottomLeg;
  
  /**************
  * Constructor *
  ***************/
  Foot(float xTipOfTopLeg, float yTipOfTopLeg, float xTipOfMidAndBottomLeg, float yTipOfMidLeg, float yTipOfBottomLeg ) {
    
    this.xTipOfTopLeg = xTipOfTopLeg;
    this.yTipOfTopLeg = yTipOfTopLeg;
    this.xTipOfMidAndBottomLeg = xTipOfMidAndBottomLeg;
    this.yTipOfMidLeg = yTipOfMidLeg;
    this.yTipOfBottomLeg = yTipOfBottomLeg;
    
    calculateFootValues();
    
  }
  
  /**************
  * Methods     *
  ***************/
  // display foot
  void display() {
    
    strokeWeight(1);
    
    // top
    ellipse(-xLeftTopFoot, yTopFoot, footDiameter, footDiameter);
    ellipse(xRightTopFoot, yTopFoot, footDiameter, footDiameter);
    // mid
    ellipse(-xLeftMidAndBottomFoot, yMidFoot, footDiameter, footDiameter);
    ellipse(xRightMidAndBottomFoot, yMidFoot, footDiameter, footDiameter);    
    // bottom
    ellipse(-xLeftMidAndBottomFoot, yBottomFoot, footDiameter, footDiameter);
    ellipse(xRightMidAndBottomFoot, yBottomFoot, footDiameter, footDiameter);  
  }
  
  // Calculate provided foot values based on provided values
  void calculateFootValues() {
    footRadius = footDiameter/2;
    xLeftTopFoot = xTipOfTopLeg + footRadius;
    xRightTopFoot = xTipOfTopLeg - footRadius;
    yTopFoot = yTipOfTopLeg - footRadius;
    xLeftMidAndBottomFoot = xTipOfMidAndBottomLeg + footRadius;
    xRightMidAndBottomFoot = xTipOfMidAndBottomLeg - footRadius;
    yMidFoot = yTipOfMidLeg - footRadius;
    yBottomFoot = yTipOfBottomLeg - footRadius;
  } 
}