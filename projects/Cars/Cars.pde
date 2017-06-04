/*
A simple car maker
*/

/********************
* Variables         *
********************/
color blue = #2186f3;
color lightBlue = #63c6ff;
color darkBlue = #0069c0;

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
  background(255);
  rectMode(CENTER);
  stroke(0);
}

/********************
* Draw              *
********************/
void draw() {
  
  drawCar(250, 250, 100, 240);
  drawCar(100, 100, 50, 175);
  
}

/***********************
* Supporting Functions *
************************/
void drawCar(int carX, int carY, int carLength, color carColor) {
   
  // position of wheels relative to car
  int wheelOffset = carLength/4;  

  // body of car
  fill(carColor);
  rect(carX, carY, carLength, carLength/2);
  
  // wheels of car
  fill(200);
  rect(carX - wheelOffset, carY - wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX + wheelOffset, carY - wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX - wheelOffset, carY + wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX + wheelOffset, carY + wheelOffset, wheelOffset, wheelOffset/2);
}