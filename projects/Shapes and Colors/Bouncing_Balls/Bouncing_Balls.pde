/*
Bouncing balls
*/

// For holding ball qualities
float ballX, ballY, diameter, radius;
float ballHorizontalSpeed, ballVerticalSpeed;
float ballMinimumBounce, ballMinimumRoll;  // thresholds below which ball should stop moving

// to simulate physical forces outside of ball
// these are magic numbers for now, at least until my physics knowledge improves
float gravity = 0.1;
float surfaceResistanceFactor = 0.75;
float rollingResistanceFactor = 0.99;

void setup() {
  // basic window conditions
  size(500, 500);
  frameRate(60);
  noCursor();
  
  // for drawing ball
  stroke(25);
  strokeWeight(2);
  fill(175, 175, 175, 255);
  
  // drawing mode
  ellipseMode(CENTER);
  
  // initialize ball qualities;
  diameter = 100;
  radius = diameter/2;
  ballX = radius;
  ballY = radius;
  ballHorizontalSpeed = 2;
  ballVerticalSpeed = 1;
  // these are magic numbers, but the simulation works with them,
  // physics knowledge too poor at this time to develop more fully
  ballMinimumBounce = .5;
  ballMinimumRoll = .001;
  
}

void draw() {
  background(240);
  
  /***************************
   Draw the ball
  ***************************/
  ellipse(ballX, ballY, diameter, diameter);
  
  /***************************
   Update the ball's position
  ***************************/
  
  ballVerticalSpeed += gravity;
  
  // At left and right edges of window, reverse direction and simulate absorption of
  // energy into wall when ball collides with wall
  if (ballX < radius) {
    ballX = radius;
    ballHorizontalSpeed = -ballHorizontalSpeed * surfaceResistanceFactor;
  } else if ( ballX > width - radius) {
    ballX = width-radius;
    ballHorizontalSpeed = -ballHorizontalSpeed * surfaceResistanceFactor;
  }
  
  // At bottom edge of window, reverse direction and simulate absorption of energy
  // into floor when ball collides with floor
  if (ballY > height - radius) {
    ballY = height - radius;
    ballVerticalSpeed = -ballVerticalSpeed * surfaceResistanceFactor;
  }

  // Increase due to gravity unless ball is moving sufficiently slowly
  // to be brought to a full stop
  if (ballY == height - radius && abs(ballVerticalSpeed) <= ballMinimumBounce) {
    ballVerticalSpeed = 0;
    ballY = height-radius;
  } else {
    ballVerticalSpeed += gravity;
  }
  
  if (ballY == height - radius && ballVerticalSpeed == 0) {
    ballHorizontalSpeed *= rollingResistanceFactor; 
  }
  // If ball is rolling too slowly, bring it to a full horizontal stop
  if (ballY == height - radius && abs(ballHorizontalSpeed) <= ballMinimumRoll) {
    ballHorizontalSpeed = 0;
  } 
  
  // update x and y positions
  ballX += ballHorizontalSpeed;
  ballY += ballVerticalSpeed;
  
}