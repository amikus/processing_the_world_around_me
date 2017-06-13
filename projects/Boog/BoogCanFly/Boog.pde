/********************
* Boog Class        *
********************/

class Boog {
  
  /**************
  * Variables   *
  **************/
  
  // The values listed below will be calculated later in the program
  // based on a small number of variables that are provided
  
  // Wings
  float halfUpperWingSpan;
  float quarterOfUpperWingHeight;
  float distanceToTopOfUpperWing;
  float distanceToBottomOfUpperWing;
  float halfLowerWingSpan;
  float eighthOfLowerWingSpan;
  float quarterOfLowerWingHeight;
  float distanceToTopOfLowerWing;
  float distanceToBottomOfLowerWing;
  float distanceToBottomOfLowerWingMid;
  float distanceToBottomOfLowerWingSmall;
  float halfLowerWingSpanMid;
  float halfLowerWingSpanSmall;
      
  // Body
  float halfBodyWidth;
  float halfBodyHeight;
  
  // Head
  float headRadius;
  float distanceToAntennaeTip;
  float distanceToAntennaeBend;
  float distanceToAntennaeTop;
  float antennaeBallRadius;
  float distanceToAntennaeBallEdgeLeft;
  float distanceToAntennaeBallEdgeRight;
  float distanceToAntennaeBallTop;
      
  // Eyes
  float eyeWidth;
  float eyeHeight;
  float distanceToTopOfEye;
  float distanceToLeftEye;
  float distanceToRightEye;
  float xLeftEyeCenter;
  float yLeftEyeCenter;
  float xRightEyeCenter;
  float yRightEyeCenter;
  
  // legs
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
  
  // feet
  float footDiameter;
  float footRadius;
  float xLeftTopFoot;
  float xRightTopFoot;
  float yTopFoot;
  float xLeftMidAndBottomFoot;
  float xRightMidAndBottomFoot;
  float yMidFoot;
  float yBottomFoot;
  
  // Colors
  color black = #160f29;
  color yellow = #f7c331;
  color orange = #f7882f;
  color red = #bf221e;
  color green = #0dab76;
  
  /***************************************************
  ****************************************************
  * These can be changed. May want to pass them in   *
  ****************************************************
  ***************************************************/
  
  // Wings
  float upperWingSpan = 60;
  float upperWingHeight = 40;
  float lowerWingSpan = 80;
  float lowerWingHeight = 40;
  
  // Body
  float bodyWidth = 20;
  float bodyHeight = 100;
  
  // Head
  float headDiameter = 60;
  float antennaeLength = 20;
  float antennaeHeight = 10;
  float distanceToAntennaeBase = 10;
  float antennaeBallDiameter = 6;
  
  // Position
  float xPosition, yPosition;            // x and y coordinates
  float wiggleFactor = 1;          // how much Boog wiggles
  
  // Flight
  boolean isFlying = false;  // whether Boog is flying
  float flightSpeed = 1;         // flying speed
  
  // Edge detection
  // Currently, these values need to provided, but ideally these would be calculated
  float hitboxHalfWidth = 40;      // half of Boog's width, used for edge detection
  float hitboxHalfHeight = 60;     // half of Boog's height, used for edge detection

  /**************
  * Constructor *
  ***************/
  
  Boog(float xPosition, float yPosition){
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    // calculate derived values used for drawing Boog
    calculateWingValues();
    calculateBodyValues();
    calculateHeadValues();  
    calculateLegValues();    
  }
  
  /**************
  * Methods     *
  ***************/
  
  /***************************************************
  * Calculate derived Boog values                    *
  ***************************************************/
  
  // Wings
  void calculateWingValues() {
    halfUpperWingSpan = upperWingSpan / 2;
    quarterOfUpperWingHeight = upperWingHeight / 4;
    distanceToTopOfUpperWing = quarterOfUpperWingHeight;
    distanceToBottomOfUpperWing = 3 * quarterOfUpperWingHeight;
    halfLowerWingSpan = lowerWingSpan / 2;
    eighthOfLowerWingSpan = lowerWingSpan / 8;
    quarterOfLowerWingHeight = lowerWingHeight / 4;
    distanceToTopOfLowerWing = quarterOfLowerWingHeight;
    distanceToBottomOfLowerWing = 3 * quarterOfLowerWingHeight;
    distanceToBottomOfLowerWingMid = 2 * quarterOfLowerWingHeight;
    distanceToBottomOfLowerWingSmall = quarterOfLowerWingHeight;
    halfLowerWingSpanMid = eighthOfLowerWingSpan * 3;
    halfLowerWingSpanSmall = eighthOfLowerWingSpan * 2;
  }
  
  // Body
  void calculateBodyValues() {
    halfBodyWidth = bodyWidth / 2;
    halfBodyHeight = bodyHeight / 2;
  }
  
  // Head
  void calculateHeadValues() {
    headRadius = headDiameter / 2;
    calculateAntennaeValues();
    calculateEyeValues();
  }
  
  void calculateAntennaeValues() {
    distanceToAntennaeTip = distanceToAntennaeBase + antennaeLength;
    distanceToAntennaeBend = distanceToAntennaeBase + (antennaeLength/2);
    distanceToAntennaeTop = headDiameter + antennaeHeight;
    antennaeBallRadius = antennaeBallDiameter/2;
    distanceToAntennaeBallEdgeLeft = distanceToAntennaeTip + antennaeBallRadius;
    distanceToAntennaeBallEdgeRight = distanceToAntennaeTip - antennaeBallRadius;
    distanceToAntennaeBallTop = headDiameter + antennaeBallRadius;
  }
  
  // Eyes
  void calculateEyeValues() {
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
  
  // legs
  void calculateLegValues() {
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
    
    calculateFootValues();
  }
  
  // feet
  void calculateFootValues() {
    footDiameter = antennaeBallDiameter;
    footRadius = antennaeBallRadius;
    xLeftTopFoot = xTipOfTopLeg + footRadius;
    xRightTopFoot = xTipOfTopLeg - footRadius;
    yTopFoot = yTipOfTopLeg - footRadius;
    xLeftMidAndBottomFoot = xTipOfMidAndBottomLeg + footRadius;
    xRightMidAndBottomFoot = xTipOfMidAndBottomLeg - footRadius;
    yMidFoot = yTipOfMidLeg - footRadius;
    yBottomFoot = yTipOfBottomLeg - footRadius;
  }
   
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
    
    translate(xPosition, yPosition);
    
    drawBoog();
  }
    
    // Draw all of Boog
  void drawBoog() {
    drawBoogWings();  
    drawBoogBody();
    drawBoogHead();
    drawBoogLegs();
  }
  
  // Draw Boog's wings
  void drawBoogWings() {
    
    // left wing
    fill(yellow);
    triangle(-halfUpperWingSpan, -distanceToTopOfUpperWing, 0, -distanceToTopOfUpperWing, 0, distanceToBottomOfUpperWing);
    triangle(-halfLowerWingSpan, distanceToBottomOfLowerWing, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWing);
    fill(orange);
    triangle(-halfLowerWingSpanMid, distanceToBottomOfLowerWingMid, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingMid);
    fill(red);
    triangle(-halfLowerWingSpanSmall, distanceToBottomOfLowerWingSmall, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingSmall);
    
    // right wing
    fill(yellow);
    triangle(halfUpperWingSpan, -distanceToTopOfUpperWing, 0, -distanceToTopOfUpperWing, 0, distanceToBottomOfUpperWing);
    triangle(halfLowerWingSpan, distanceToBottomOfLowerWing, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWing);
    fill(orange);
    triangle(halfLowerWingSpanMid, distanceToBottomOfLowerWingMid, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingMid);
    fill(red);
    triangle(halfLowerWingSpanSmall, distanceToBottomOfLowerWingSmall, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingSmall);
    
  }
  
  // Draw Boog's body
  void drawBoogBody() {
    strokeWeight(2);
    fill(green);
    rect(-halfBodyWidth, -halfBodyHeight, bodyWidth, bodyHeight);
  }
  
  // Draw Boog's head
  void drawBoogHead() {
    strokeWeight(2);
    fill(green);
    ellipse(-headRadius, -headDiameter, headDiameter, headDiameter);
    
    drawBoogAntennae();
    drawBoogEyes();
  }
  
  // Draw Boog's antennae
  void drawBoogAntennae() {
    
    // antennae lines
    line(-distanceToAntennaeTip, -headDiameter, -distanceToAntennaeBend, -distanceToAntennaeTop);
    line(-distanceToAntennaeBend, -distanceToAntennaeTop, -distanceToAntennaeBase, -headDiameter);
    line(distanceToAntennaeTip, -headDiameter, distanceToAntennaeBend, -distanceToAntennaeTop);
    line(distanceToAntennaeBend, -distanceToAntennaeTop, distanceToAntennaeBase, -headDiameter);
    
    // antennae dots
    strokeWeight(1);
    fill(black);
    ellipse(-distanceToAntennaeBallEdgeLeft, -distanceToAntennaeBallTop, antennaeBallDiameter, antennaeBallDiameter);
    ellipse(distanceToAntennaeBallEdgeRight, -distanceToAntennaeBallTop, antennaeBallDiameter, antennaeBallDiameter);
  }
  
  // Draw Boog's eyes
  void drawBoogEyes() {
    strokeWeight(1);
    fill(black);
    ellipse(-distanceToLeftEye, -distanceToTopOfEye, eyeWidth, eyeHeight);
    ellipse(distanceToRightEye, -distanceToTopOfEye, eyeWidth, eyeHeight);
  }
  
  // Draw Boog's arms/legs
  void drawBoogLegs() {
    fill(black);
    
    // top
    strokeWeight(2);
    line(-xBaseOfAllLegs, yBaseOfTopLeg, -xTipOfElbow, yTipOfElbow);
    line(-xTipOfElbow, yTipOfElbow, -xTipOfTopLeg, yTipOfTopLeg);
    strokeWeight(1);
    ellipse(-xLeftTopFoot, yTopFoot, footDiameter, footDiameter);
    strokeWeight(2);
    line(xBaseOfAllLegs, yBaseOfTopLeg, xTipOfElbow, yTipOfElbow);
    line(xTipOfElbow, yTipOfElbow, xTipOfTopLeg, yTipOfTopLeg);
    strokeWeight(1);
    ellipse(xRightTopFoot, yTopFoot, footDiameter, footDiameter);
    
    // middle
    strokeWeight(2);
    line(-xBaseOfAllLegs, yBaseOfMidLeg, -xTipOfMidAndBottomLeg, yTipOfMidLeg);
    line(xBaseOfAllLegs, yBaseOfMidLeg, xTipOfMidAndBottomLeg, yTipOfMidLeg);
    strokeWeight(1);
    ellipse(-xLeftMidAndBottomFoot, yMidFoot, footDiameter, footDiameter);
    ellipse(xRightMidAndBottomFoot, yMidFoot, footDiameter, footDiameter);
    
    // bottom
    strokeWeight(2);
    line(-xBaseOfAllLegs, yBaseOfBottomLeg, -xTipOfMidAndBottomLeg, yTipOfBottomLeg);
    line(xBaseOfAllLegs, yBaseOfBottomLeg, xTipOfMidAndBottomLeg, yTipOfBottomLeg);
    strokeWeight(1);
    ellipse(-xLeftMidAndBottomFoot, yBottomFoot, footDiameter, footDiameter);
    ellipse(xRightMidAndBottomFoot, yBottomFoot, footDiameter, footDiameter);  
  }

  /***************************************************
  * Update Position                                  *
  ***************************************************/  
  
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
  }

  /***************************************************
  * Fire Laser                                       *
  ***************************************************/
 
  // When right mouse button is depressed, draw lasers from
  // Boog's eyes to the mouse pointer
  void fireLaser() {
    if (mousePressed && mouseButton == RIGHT) {
      stroke(red);
      line (-xLeftEyeCenter, -yLeftEyeCenter, mouseX-xPosition, mouseY-yPosition);
      line (xRightEyeCenter, -yRightEyeCenter, mouseX-xPosition, mouseY-yPosition);
    }     
  }

}