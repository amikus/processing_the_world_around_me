/*
A screen full of stripes that change as they are rolled over.
*/

color pink = color(200, 0, 100, 255);

// declare array for holding rollover stripes
RolloverStripe[] stripeArray = new RolloverStripe[10];

void setup() {
  
  // basic window conditions
  size(500, 500);
  frameRate(60);
  
  // instantiate each of the rollover stripes for the array
  for (int i = 0; i < stripeArray.length; i++) {
    stripeArray[i] = new RolloverStripe(random(width), random(30, 80), random(1), color(random(255)), pink);
  }
  
}

void draw() {

  background(100);
  
  // loop through each strip in the stripe array and update then display it
  for (int i = 0; i < stripeArray.length; i++) {
    stripeArray[i].display();
    stripeArray[i].move();
  }
  
}