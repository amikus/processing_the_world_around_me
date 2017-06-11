/*
Bouncing balls
*/

// Surface
Surface wallsAndFloor;
// Balls
Ball ballOne;

// to simulate gravity
// this is a magic number for now, at least until my physics knowledge improves
float gravity = 0.1;


void setup() {
  // basic window conditions
  size(500, 500);
  frameRate(60);
  noCursor();
  
  // create surface and ball
  wallsAndFloor = new Surface(0.75, 0.99);
  ballOne = new Ball(100, gravity, wallsAndFloor);
}

void draw() {
  background(240);
  
  ballOne.display();
  ballOne.updatePosition();
}

void mousePressed() {
  ballOne.ballCanFall = !ballOne.ballCanFall;
}