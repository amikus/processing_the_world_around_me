/*
A button that can be activated or deactivated by clicking on it
*/

// colors
color blue = color(0, 150, 240, 255);
color green = color(0, 200, 0, 255);
color darkGray = color(40, 40, 40, 255);
color lightGray = color(200, 200, 200, 255);

Switch switchOne;

void setup() {
  // basic window conditions
  size(500, 500);
  frameRate(60);
  
  switchOne = new Switch(width * .35, height * .3, width * .3, height * .3, blue, green);
}

void draw() {
  background(0);

  switchOne.display();
}

void mousePressed() {
  switchOne.toggleSwitch();
}