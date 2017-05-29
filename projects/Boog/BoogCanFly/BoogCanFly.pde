/*
Boog flies around the screen
*/

// establish colors
color black = #160f29;
color yellow = #f7c331;
color orange = #f7882f;
color red = #bf221e;
color green = #0dab76;

// Boog's variables

float boogX, boogY;            // x and y coordinates
float boogWiggle = 1;          // how much Boog wiggles


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

// Flight
boolean boogIsFlying = false;  // whether Boog is flying
float flightSpeed = 1;         // flying speed

// Edge detection
// Currently, these values need to provided, but ideally these would be calculated
float boogHalfWidth = 40;      // half of Boog's width, used for edge detection
float boogHalfHeight = 60;     // half of Boog's height, used for edge detection

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
int xLeftEyeCenter = distanceToLeftEye - eyeWidth/2;
int yLeftEyeCenter = distanceToTopOfEye - eyeHeight/2;
int xRightEyeCenter = distanceToRightEye + eyeWidth/2;
int yRightEyeCenter = distanceToTopOfEye - eyeHeight/2;

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
  
  // establish Boog's starting position (center of window)
  boogX = width/2;
  boogY = height * .45;
  
}

void draw() {
  background(255);
  
  /**************************
    Draw Boog
  **************************/
  
  // set CORNER and stroke mode
  ellipseMode(CORNER);
  rectMode(CORNER);
  stroke(black);
  strokeWeight(1);
  
  translate(boogX, boogY);
  
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
  
  /**************************
    Update Boog's position
  ***************************/
  
  // if Boog collides with either edge of the window, reverse his speed
  if (boogX <= boogHalfWidth || boogX >= width-boogHalfWidth) {
    flightSpeed = -flightSpeed;
  }
  
  // don't allow Boog to move beyond the top or bottom of the window
  if (boogY <= boogHalfHeight) {
    boogY = boogHalfHeight;
  } else if (boogY >= height-boogHalfHeight) {
    boogY = height-boogHalfHeight;
  }
  
  // update Boog's y position randomly, based on degree of wiggle
  boogY += random(-boogWiggle, boogWiggle);
  
  // only update Boog's x position if flight is turned on
  if (boogIsFlying) {
    boogX += flightSpeed;
  }
  
  /**************************
    Lasers
  ***************************/
  
  // if right mouse button is depressed, draw lasers to mouse point
  if (mousePressed && mouseButton == RIGHT) {
    stroke(red);
    line (-xLeftEyeCenter, -yLeftEyeCenter, mouseX-boogX, mouseY-boogY);
    line (xRightEyeCenter, -yRightEyeCenter, mouseX-boogX, mouseY-boogY);
  }
}


void mousePressed() {
  if (mouseButton == LEFT) {
     boogIsFlying = !boogIsFlying; 
  }
}