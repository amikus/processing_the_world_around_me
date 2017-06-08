/*
A garden of flowers.
*/

float horizonLine;
float gardenHeight;
float gardenWidth;
float columnSpacing;
float rowSpacing;

int numberOfFlowers;

// column and row number, used for placing flowers
int columnNumber;
int rowNumber;


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

color purple = #d500f9;
color lightPurple = #ff5bff;
color darkPurple = #9e00c5;

color white = #eeeeee;

/********************
* Setup             *
********************/
void setup() {
  size(500, 500);
  rectMode(CORNER);
  ellipseMode(CENTER);
  
  // sky
  background(blue);
  
  // get garden dimensions
  horizonLine = height * .4;
  gardenWidth = width;
  gardenHeight = height * .6;
  columnSpacing = gardenWidth/5;
  rowSpacing = gardenHeight/4;
  
  
  // dirt
  fill(brown);
  rect(0, horizonLine, width, height * .6);
  
  // reset number of flowers, row, and column
  numberOfFlowers = 0;
  rowNumber = 0;
  columnNumber = 0;
}

/********************
* Draw              *
********************/
void draw() {
  
  drawFlower(100, pink, 1, 1);
  drawFlower(150, lightPurple, 1, 2);
  drawFlower(125, lightYellow, 1, 3);
  drawFlower(200, darkPink, 1, 4);
  
  drawFlower(175, purple, 2, 1);
  drawFlower(100, lightYellow, 2, 2);
  drawFlower(115, white, 2, 3);
  drawFlower(125, darkPurple, 2, 4);
  
  
  drawFlower(75, white, 3, 1);
  drawFlower(115, pink, 3, 2);
  drawFlower(155, darkPink, 3, 3);
  drawFlower(100, lightYellow, 3, 4);
  
}

/***********************
* Supporting Functions *
************************/
void drawFlower(float flowerHeight, color petalColor, int rowNumber, int columnNumber) { 
    
  // flower dimensions
  float stemWidth = flowerHeight/25;
  float leafWidth = flowerHeight/5;
  float halfLeafWidth = leafWidth/2;
  float leafHeight = leafWidth/2;
  float petalSize = flowerHeight/2;
  float petalCenterSize = flowerHeight/5;
  
  // flower positions
  float xBaseOfStem = columnSpacing * columnNumber;
  if (rowNumber == 1) xBaseOfStem += (width/10 - width/25);
  if (rowNumber == 2) xBaseOfStem -= (width/25);
  if (rowNumber == 3) xBaseOfStem -= (width/10);
  float yBaseOfStem = horizonLine + (rowSpacing * rowNumber);
  float yTopOfStem = yBaseOfStem - flowerHeight;
  float xLeftLeafCenter = xBaseOfStem - halfLeafWidth;
  float yLeftLeafCenter = yBaseOfStem - (flowerHeight * .3);
  float xRightLeafCenter = xBaseOfStem + halfLeafWidth + stemWidth;
  float yRightLeafCenter = yBaseOfStem - (flowerHeight * .4);

  stroke(darkGray);

  fill(green);
  
  // stem
  strokeWeight(width/300);
  rect(xBaseOfStem, yTopOfStem, stemWidth, flowerHeight);

  // leaves
  strokeWeight(width/300);
  ellipse(xLeftLeafCenter, yLeftLeafCenter, leafWidth, leafHeight);  // left leaf
  ellipse(xRightLeafCenter, yRightLeafCenter, leafWidth, leafHeight);  // right leaf
  
  // petals
  strokeWeight(width/250);
  fill(petalColor);
  ellipse(xBaseOfStem, yTopOfStem, petalSize, petalSize);
  
  // center
  strokeWeight(width/250);
  fill(yellow);
  ellipse(xBaseOfStem, yTopOfStem, petalCenterSize, petalCenterSize);
  
}