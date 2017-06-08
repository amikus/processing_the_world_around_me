/*
A garden of flowers.
*/

float horizonLine;
float numberOfFlowers;

/********************
* Variables         *
********************/
color blue = #2186f3;
color lightBlue = #63c6ff;
color darkBlue = #0069c0;

color brown = #5b3f36;
color lightBrown = #896a60;
color darkBrown = #301810;

color pink = #ff4081;
color lightPink = #ff79b0;
color darkPink = #c60055;

color gray = #546e7a;
color lightGray = #819ca9;
color darkGray = #29434e;

color green = #64dd17;
color lightGreen = #9cff57;
color darkGreen = #1faa00;

color yellow = #ffd600;
color lightYellow = #ffff52;
color darkYellow = #c7a500;

/********************
* Setup             *
********************/
void setup() {
  size(500, 500);
  horizonLine = height * .4;
  rectMode(CORNER);
  ellipseMode(CENTER);
  
  // sky
  background(blue);
  
  // dirt
  fill(brown);
  rect(0, horizonLine, width, height);
  
  // reset numberOfFlowers
  numberOfFlowers = 0;
}

/********************
* Draw              *
********************/
void draw() {
  
  drawFlower(100, pink);
  
}

/***********************
* Supporting Functions *
************************/
void drawFlower(float flowerHeight, color petalColor) {

  drawTopRowFlower(flowerHeight, petalColor);
  
  numberOfFlowers++;
  
}

void drawTopRowFlower(float flowerHeight, color petalColor) {

  // flower dimensions
  float stemWidth = flowerHeight/25;
  float leafWidth = flowerHeight/5;
  float halfLeafWidth = leafWidth/2;
  float leafHeight = leafWidth/2;
  float petalSize = flowerHeight/2;
  float petalCenterSize = flowerHeight/5;
  
  // flower positions
  float yBaseOfStem = height * .5;
  float yTopOfStem = yBaseOfStem - flowerHeight;
  float xLeftLeafCenter = 100 - halfLeafWidth;
  float yLeftLeafCenter = yBaseOfStem - (flowerHeight * .3);
  float xRightLeafCenter = 100 + halfLeafWidth + stemWidth;
  float yRightLeafCenter = yBaseOfStem - (flowerHeight * .4);
  
  stroke(darkGray);
  
  fill(green);
  
  // stem
  strokeWeight(width/300);
  rect(100, yTopOfStem, stemWidth, flowerHeight);

  // leaves
  strokeWeight(width/300);
  ellipse(xLeftLeafCenter, yLeftLeafCenter, leafWidth, leafHeight);  // left leaf
  ellipse(xRightLeafCenter, yRightLeafCenter, leafWidth, leafHeight);  // right leaf
  
  // petals
  strokeWeight(width/250);
  fill(petalColor);
  ellipse(100, yTopOfStem, petalSize, petalSize);
  
  // center
  strokeWeight(width/250);
  fill(yellow);
  ellipse(100, yTopOfStem, petalCenterSize, petalCenterSize);  
}

void drawMidRowFlower(float flowerHeight, color petalColor) {
  
}

void drawBottomRowFlower(float flowerHeight, color petalColor) {
  
}