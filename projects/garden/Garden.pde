/*
A garden of flowers.
*/

float horizonLine;

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
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  // sky
  background(blue);
  
  // dirt
  fill(brown);
  rect(width / 2, height * .7, width, height * .6);
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

  stroke(darkGray);
  
  fill(green);
  
  // stem
  strokeWeight(width/300);
  rect(100, horizonLine , flowerHeight/25, flowerHeight);

  // leaves
  strokeWeight(width/300);
  ellipse(100 - 10, horizonLine + 20, 20, 10);  // left leaf
  ellipse(100 + 10, horizonLine + 10, 20, 10);  // right leaf
  
  // petals
  strokeWeight(width/250);
  fill(petalColor);
  ellipse(100, horizonLine + 50 - flowerHeight, flowerHeight / 2, flowerHeight / 2);
  
  // center
  strokeWeight(width/250);
  fill(yellow);
  ellipse(100, horizonLine + 50 - flowerHeight, flowerHeight / 5, flowerHeight / 5);
}