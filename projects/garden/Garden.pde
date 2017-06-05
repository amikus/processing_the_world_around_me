/*
A garden of flowers.
*/

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

/********************
* Setup             *
********************/
void setup() {
  size(500, 500);
  background(blue);
  fill(brown);
  rect(0, height * .4, width, height);
}

/********************
* Draw              *
********************/
void draw() {
  
  drawFlower();
  
}

/***********************
* Supporting Functions *
************************/
void drawFlower() {
   
}