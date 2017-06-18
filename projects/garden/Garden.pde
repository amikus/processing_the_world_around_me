/*
A garden of flowers.
*/

float horizonLine;
float gardenHeight;
float gardenWidth;
float columnSpacing;
float rowSpacing;

int numberOfFlowers;

// Array for holding flowers
Flower[] flowerArray = new Flower[12];

/********************
* Colors            *
********************/

// sky
color blue = #2186f3;

// dirt
color brown = #5b3f36;

// colors that can be passed in to color flower petals
color pink = #ff4081;
color lightPink = #ff79b0;
color darkPink = #c60055;
color lightYellow = #ffff52;
color purple = #d500f9;
color lightPurple = #ff5bff;
color darkPurple = #9e00c5;
color white = #eeeeee;

color[] petalColorArray = {pink, lightPink, darkPink, lightYellow, purple, lightPurple, darkPurple, white};
int numPetalColors = petalColorArray.length;

/********************
* Setup             *
********************/
void setup() {
  size(500, 500);
  rectMode(CORNER);
  ellipseMode(CENTER);
  
  // sky
  background(blue);
  
  // set garden dimensions
  horizonLine = height * .4;
  gardenWidth = width;
  gardenHeight = height * .6;
  rowSpacing = gardenHeight/4;
  columnSpacing = gardenWidth/5;
  
  // dirt
  fill(brown);
  rect(0, horizonLine, width, height * .6);
  
  // instantiate flowers for flowerArray
  for (int i = 0; i < flowerArray.length; i++) {
    flowerArray[i] = new Flower(random(75, 150), petalColorArray[int(random(0, numPetalColors))], (i / 4) + 1, (i % 4) + 1, rowSpacing, columnSpacing);
  }
}

/********************
* Draw              *
********************/
void draw() {
  
  for (int i = 0; i < flowerArray.length; i++) {
    flowerArray[i].display();
  }
}