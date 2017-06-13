/*
Boog flies around the screen and shoots lasers from his eyes
*/

Boog boog;

/***************************************************
****************************************************
* Setup                                            *
****************************************************
***************************************************/

void setup() {
  // initialize basic window conditions
  size(500, 500);
  frameRate(60);

  // establish Boog's starting position (slightly above center of window)
  float xPosition = width/2;
  float yPosition = height * .45;
  
  boog = new Boog(xPosition, yPosition);
}

/***************************************************
****************************************************
* Draw                                             *
****************************************************
***************************************************/

void draw() {
  
  background(255);
  
  // draw Boog
  boog.display();
  
  // determine Boog's current location
  boog.updatePosition();
  
  // fire a laser from Boog's eyes when right mouse button is depressed
  boog.fireLaser();
  

}

/***************************************************
****************************************************
* User input                                       *
****************************************************
***************************************************/

void mousePressed() {
  if (mouseButton == LEFT) {
     boog.isFlying = !boog.isFlying; 
  }
}