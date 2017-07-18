/*
Bouncing balls
*/

/************
* Variables *
************/
// Surface
Surface wallsAndFloor;

// Balls
Ball[] ballArray = new Ball[1];
Ball ballOne;

// to simulate gravity
// this is a magic number for now, at least until my physics knowledge improves
float gravity = 0.1;

/************
* Setup     *
************/
void setup() {
  // basic window conditions
  size(500, 500);
  frameRate(60);
  
  // create surface
  wallsAndFloor = new Surface(0.75, 0.99);
  
  // create first ball
  ballArray[0] = new Ball(100, 50, 50, gravity, wallsAndFloor);
}

/************
* Draw      *
************/
void draw() {
  background(240);
  
  // loop through ball array, displaying each ball and updating its position
  for (int i = 0; i < ballArray.length; i++ ) {
    ballArray[i].display();
    ballArray[i].updatePosition();
  }
}

/************
* Input     *
************/
void mousePressed() {
  Ball tempBall = new Ball(random(50, 150), mouseX, mouseY, gravity, wallsAndFloor);
  ballArray = (Ball[])append(ballArray, tempBall);
}