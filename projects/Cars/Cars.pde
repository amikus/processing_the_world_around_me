/*
A simple car maker
*/

/********************
* Variables         *
********************/
  // Colors
  color blue = #2186f3;
  color lightBlue = #63c6ff;
  color darkBlue = #0069c0;
  
  color pink = #ff4081;
  color lightPink = #ff79b0;
  color darkPink = #c60055;
  
  color gray = #546e7a;
  color lightGray = #819ca9;
  color darkGray = #29434e;

  // Cars
  Car carOne;
  Car carTwo;
  Car carThree;
  Car carFour;
  
/********************
* Setup             *
********************/
void setup() {
  size(500, 500);
  background(blue);
  
  carOne = new Car(lightPink, 100, 100, 50, 1);
  carTwo = new Car(pink, 250, 250, 100, 1.5);
  carThree = new Car(lightGray, 350, 150, 80, 1.25);
  carFour = new Car(lightBlue, 150, 400, 150, .75);
  
}

/********************
* Draw              *
********************/
void draw() {
  
  background(blue);
  
  // update car positions
  carOne.drive();
  carTwo.drive();
  carThree.drive();
  carFour.drive();
  
  // draw the cars
  carOne.display();
  carTwo.display();
  carThree.display();
  carFour.display();
}