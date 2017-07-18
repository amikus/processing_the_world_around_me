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

  color[] colorArray = {lightPink, pink, lightGray, lightBlue};
  Car[] carArray = new Car[4];
  
/********************
* Setup             *
********************/
void setup() {
  size(500, 500);
  background(blue);
  
  // initialize cars with random characteristics
  for (int i = 0; i < carArray.length; i++) {
    carArray[i] = new Car(colorArray[int(random(0, 3))], random(0, 500), random(0, 500), random(0, 200), random(.5, 1.5));  
  }
  
}

/********************
* Draw              *
********************/
void draw() {
  
  background(blue);
  
  // loop through car array, updating their positions and displaying them to screen
  for (int i = 0; i < carArray.length; i++) {
    carArray[i].drive();
    carArray[i].display();
  }
  
}