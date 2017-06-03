/*
Boog flies around the screen and shoots lasers from his eyes
*/

/***************************************************
****************************************************
* Declare variables                             *
****************************************************
***************************************************/


// The values listed below will be calculated later in the program
// based on a small number of variables that are provided

// Wings
int halfUpperWingSpan;
int quarterOfUpperWingHeight;
int distanceToTopOfUpperWing;
int distanceToBottomOfUpperWing;
int halfLowerWingSpan;
int eighthOfLowerWingSpan;
int quarterOfLowerWingHeight;
int distanceToTopOfLowerWing;
int distanceToBottomOfLowerWing;
int distanceToBottomOfLowerWingMid;
int distanceToBottomOfLowerWingSmall;
int halfLowerWingSpanMid;
int halfLowerWingSpanSmall;
    
// Body
int halfBodyWidth;
int halfBodyHeight;

// Head
int headRadius;
int distanceToAntennaeTip;
int distanceToAntennaeBend;
int distanceToAntennaeTop;
int antennaeBallRadius;
int distanceToAntennaeBallEdgeLeft;
int distanceToAntennaeBallEdgeRight;
int distanceToAntennaeBallTop;
    
// Eyes
int eyeWidth;
int eyeHeight;
int distanceToTopOfEye;
int distanceToLeftEye;
int distanceToRightEye;
int xLeftEyeCenter;
int yLeftEyeCenter;
int xRightEyeCenter;
int yRightEyeCenter;

// legs
int xBaseOfAllLegs;
int yBaseOfTopLeg;
int xTipOfElbow;
int yTipOfElbow;
int xTipOfTopLeg;
int yTipOfTopLeg;
int yBaseOfMidLeg;
int yBaseOfBottomLeg;
int xTipOfMidAndBottomLeg;
int yTipOfMidLeg;
int yTipOfBottomLeg;

// feet
int footDiameter;
int footRadius;
int xLeftTopFoot;
int xRightTopFoot;
int yTopFoot;
int xLeftMidAndBottomFoot;
int xRightMidAndBottomFoot;
int yMidFoot;
int yBottomFoot;

/***************************************************
****************************************************
* Provided values that are used for drawing Boog   *
****************************************************
***************************************************/   

// Colors
color black = #160f29;
color yellow = #f7c331;
color orange = #f7882f;
color red = #bf221e;
color green = #0dab76;

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

// Position
float boogX, boogY;            // x and y coordinates
float boogWiggle = 1;          // how much Boog wiggles

// Flight
boolean boogIsFlying = false;  // whether Boog is flying
float flightSpeed = 1;         // flying speed

// Edge detection
// Currently, these values need to provided, but ideally these would be calculated
float boogHalfWidth = 40;      // half of Boog's width, used for edge detection
float boogHalfHeight = 60;     // half of Boog's height, used for edge detection

/***************************************************
****************************************************
* Setup                                            *
****************************************************
***************************************************/

void setup() {
  // initialize basic window conditions
  size(500, 500);
  frameRate(60);
  
  // establish Boog's starting position (center of window)
  mouseX = width/2;
  mouseY = height/2;
  
  // calculate derived values used for drawing Boog
  calculateWingValues();
  calculateBodyValues();
  calculateHeadValues();  
  calculateLegValues();

  // establish Boog's starting position (slightly above center of window)
  boogX = width/2;
  boogY = height * .45;
}

/***************************************************
****************************************************
* Draw                                             *
****************************************************
***************************************************/

void draw() {
  
  background(255);
  
  // set CORNER and stroke mode
  ellipseMode(CORNER);
  rectMode(CORNER);
  stroke(black);
  strokeWeight(1);
  
  translate(boogX, boogY);
  
  // draw Boog
  drawBoogWings();  
  drawBoogBody();
  drawBoogHead();
  drawBoogLegs();
  
  // determine Boog's current location
  updateBoogPosition();
  
  // fire a laser from Boog's eyes when right mouse button is depressed
  fireLaser();
  

}

/***************************************************
****************************************************
* User input                                       *
****************************************************
***************************************************/

void mousePressed() {
  if (mouseButton == LEFT) {
     boogIsFlying = !boogIsFlying; 
  }
}


/***************************************************
****************************************************
* Calculate derived Boog values                    *
****************************************************
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
****************************************************
* Draw Boog                                        *
****************************************************
***************************************************/

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

// Calculate Boog's new (x,y) position
void updateBoogPosition() {
  
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
}

// When right mouse button is depressed, draw lasers from
// Boog's eyes to the mouse pointer
void fireLaser() {
  
  if (mousePressed && mouseButton == RIGHT) {
    stroke(red);
    line (-xLeftEyeCenter, -yLeftEyeCenter, mouseX-boogX, mouseY-boogY);
    line (xRightEyeCenter, -yRightEyeCenter, mouseX-boogX, mouseY-boogY);
  }  
  
}