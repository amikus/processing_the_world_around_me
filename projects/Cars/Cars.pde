/*
A simple car maker
*/

// Car variables
int carX;         // x coordinate
int carY;         // y coordinate
int carSize;      // size
int wheelOffset;  // position of wheels relative to car

void setup() {
  size(500, 500);
  background(255);
  rectMode(CENTER);
  stroke(0);
}

void draw() {

  /********
  * Car 1 *
  ********/
  
  // Establish variables for first car
  carX = 250;
  carY = 250;
  carSize = 100;
  wheelOffset = carSize/4;
  
  // Draw first car
  fill(175);
  rect(carX, carY, carSize, carSize/2);
  
  // Draw first car's wheels
  fill(0);
  rect(carX - wheelOffset, carY - wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX + wheelOffset, carY - wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX - wheelOffset, carY + wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX + wheelOffset, carY + wheelOffset, wheelOffset, wheelOffset/2);

  /********
  * Car 2 *
  ********/    
    
  // Establish variables for second car
  carX = 100;
  carY = 100;
  carSize = 50;
  wheelOffset = carSize/4;
  
  // Draw second car  
  fill(175);
  rect(carX, carY, carSize, carSize/2);
  
  // Draw first car's wheels
  fill(0);
  rect(carX - wheelOffset, carY - wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX + wheelOffset, carY - wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX - wheelOffset, carY + wheelOffset, wheelOffset, wheelOffset/2);
  rect(carX + wheelOffset, carY + wheelOffset, wheelOffset, wheelOffset/2);
  
}