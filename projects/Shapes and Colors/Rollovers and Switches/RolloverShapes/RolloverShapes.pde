/*
Objects change color when the mouse moves over them.
*/

// Colors
color blue = color(0, 150, 240, 255);
color green = color(0, 200, 0, 255);
color pink = color(200, 0, 100, 255);

// Rollover shapes
RolloverRect rectOne;
RolloverEllipse ellipseOne;

void setup() {
  
  // basic window conditions
  size(500, 500);
  frameRate(60);
  
  rectOne = new RolloverRect(width * .18, height * .32, width * .3, width * .3, blue, green);
  ellipseOne = new RolloverEllipse(width * .58, height * .32, width * .3, pink, green);
 
}

void draw() {
  background(0);
  
  rectOne.display();
  ellipseOne.display();
  
}