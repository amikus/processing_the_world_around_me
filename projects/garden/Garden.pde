/*
A garden of flowers.
*/

float horizonLine;
float gardenHeight;
float gardenWidth;
float columnSpacing;
float rowSpacing;

int numberOfFlowers;

// Flowers
Flower flowerOne;
Flower flowerTwo;
Flower flowerThree;
Flower flowerFour;
Flower flowerFive;
Flower flowerSix;
Flower flowerSeven;
Flower flowerEight;
Flower flowerNine;
Flower flowerTen;
Flower flowerEleven;
Flower flowerTwelve;

/********************
* Colors            *
********************/

// sky
color blue = #2186f3;

// dirt
color brown = #5b3f36;

// colors that can be passed in to color flowers
color pink = #ff4081;
color lightPink = #ff79b0;
color darkPink = #c60055;
color lightYellow = #ffff52;
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
  
  // row 1
  flowerOne = new Flower(100, pink, 1, 1);
  flowerTwo = new Flower(150, lightPurple, 1, 2);
  flowerThree = new Flower(125, lightYellow, 1, 3);
  flowerFour = new Flower(200, darkPink, 1, 4);
  // row 2
  flowerFive = new Flower(175, purple, 2, 1);
  flowerSix = new Flower(100, lightYellow, 2, 2);
  flowerSeven = new Flower(115, white, 2, 3);
  flowerEight = new Flower(125, darkPurple, 2, 4);
  // row 3
  flowerNine = new Flower(75, white, 3, 1);
  flowerTen = new Flower(115, lightPink, 3, 2);
  flowerEleven = new Flower(155, darkPink, 3, 3);
  flowerTwelve = new Flower(100, lightYellow, 3, 4);
}

/********************
* Draw              *
********************/
void draw() {
  
  // row 1
  flowerOne.display();
  flowerTwo.display();
  flowerThree.display();
  flowerFour.display();
  // row 2
  flowerFive.display();
  flowerSix.display();
  flowerSeven.display();
  flowerEight.display();
  // row 3
  flowerNine.display();
  flowerTen.display();
  flowerEleven.display();
  flowerTwelve.display();
  
}