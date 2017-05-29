/*
Draws Boog, a bug-like creature
*/

// establish colors
color black = #160f29;
color yellow = #f7c331;
color orange = #f7882f;
color red = #bf221e;
color green = #0dab76;

/***************************************************
****************************************************
* Provided values that are used for drawing Boog   *
****************************************************
***************************************************/   
// Wings
int upperWingSpan = 60;
int upperWingHeight = 40;
int lowerWingSpan = 80;
int lowerWingHeight = 40;

// Body
int bodyWidth = 20;
int bodyHeight = 100;

// Head
int headDiameter = 60;
int antennaeLength = 20;
int antennaeHeight = 10;
int distanceToAntennaeBase = 10;
int antennaeBallDiameter = 6;

/***************************************************
****************************************************
* Calculated values that are used for drawing Boog *
****************************************************
***************************************************/
// Wings
int halfUpperWingSpan = upperWingSpan / 2;
int quarterOfUpperWingHeight = upperWingHeight / 4;
int distanceToTopOfUpperWing = quarterOfUpperWingHeight;
int distanceToBottomOfUpperWing = 3 * quarterOfUpperWingHeight;
int halfLowerWingSpan = lowerWingSpan / 2;
int eighthOfLowerWingSpan = lowerWingSpan / 8;
int quarterOfLowerWingHeight = lowerWingHeight / 4;
int distanceToTopOfLowerWing = quarterOfLowerWingHeight;
int distanceToBottomOfLowerWing = 3 * quarterOfLowerWingHeight;
int distanceToBottomOfLowerWingMid = 2 * quarterOfLowerWingHeight;
int distanceToBottomOfLowerWingSmall = quarterOfLowerWingHeight;
int halfLowerWingSpanMid = eighthOfLowerWingSpan * 3;
int halfLowerWingSpanSmall = eighthOfLowerWingSpan * 2;

// Body
int halfBodyWidth = bodyWidth / 2;
int halfBodyHeight = bodyHeight / 2;

// Head
int headRadius = headDiameter / 2;
int distanceToAntennaeTip = distanceToAntennaeBase + antennaeLength;
int distanceToAntennaeBend = distanceToAntennaeBase + (antennaeLength/2);
int distanceToAntennaeTop = headDiameter + antennaeHeight;
int antennaeBallRadius = antennaeBallDiameter/2;
int distanceToAntennaeBallEdgeLeft = distanceToAntennaeTip + antennaeBallRadius;
int distanceToAntennaeBallEdgeRight = distanceToAntennaeTip - antennaeBallRadius;
int distanceToAntennaeBallTop = headDiameter + antennaeBallRadius;

// Eyes
int eyeWidth = headRadius/2;
int eyeHeight = headRadius;
int distanceToTopOfEye = 3 * (headDiameter/4);
int distanceToLeftEye = headDiameter/6 + eyeWidth;
int distanceToRightEye = headDiameter/6;

// legs
int xBaseOfAllLegs = halfBodyWidth;
int yBaseOfTopLeg = bodyHeight/20;
int xTipOfElbow = halfBodyWidth + halfBodyWidth/2;
int yTipOfElbow = yBaseOfTopLeg + halfBodyWidth;
int xTipOfTopLeg = halfBodyWidth/2;
int yTipOfTopLeg = yTipOfElbow + halfBodyWidth;
int yBaseOfMidLeg = halfBodyHeight/2;
int yBaseOfBottomLeg = halfBodyHeight;
int xTipOfMidAndBottomLeg = halfBodyWidth + halfBodyWidth;
int yTipOfMidLeg = yBaseOfMidLeg + halfBodyWidth;
int yTipOfBottomLeg = yBaseOfBottomLeg + halfBodyWidth;

// feet
int footDiameter = antennaeBallDiameter;
int footRadius = antennaeBallRadius;
int xLeftTopFoot = xTipOfTopLeg + footRadius;
int xRightTopFoot = xTipOfTopLeg - footRadius;
int yTopFoot = yTipOfTopLeg - footRadius;
int xLeftMidAndBottomFoot = xTipOfMidAndBottomLeg + footRadius;
int xRightMidAndBottomFoot = xTipOfMidAndBottomLeg - footRadius;
int yMidFoot = yTipOfMidLeg - footRadius;
int yBottomFoot = yTipOfBottomLeg - footRadius;


/***************************************************
****************************************************
* Main program                                     *
****************************************************
***************************************************/

void setup() {
  // initialize basic window conditions
  size(500, 500);
  frameRate(60);
  noCursor();
  
  // establish Boog's starting position (center of window)
  mouseX = width/2;
  mouseY = height/2;
  
}

void draw() {
  background(255);
  
  // set CENTER and stroke mode
  ellipseMode(CORNER);
  rectMode(CORNER);
  stroke(black);
  strokeWeight(1);
  
  translate(mouseX, mouseY);
  
  
  // Draw Boog's wings
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
  
  // Draw Boog's body
  strokeWeight(2);
  fill(green);
  rect(-halfBodyWidth, -halfBodyHeight, bodyWidth, bodyHeight);
  
  // Draw Boog's head
  strokeWeight(2);
  fill(green);
  ellipse(-headRadius, -headDiameter, headDiameter, headDiameter);
  
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
  
  // Draw Boog's eyes
  strokeWeight(1);
  fill(black);
  ellipse(-distanceToLeftEye, -distanceToTopOfEye, eyeWidth, eyeHeight);
  ellipse(distanceToRightEye, -distanceToTopOfEye, eyeWidth, eyeHeight);
  
  // Draw Boog's arms/legs

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

void mousePressed() {
  
}

void keyPressed() {
  
}