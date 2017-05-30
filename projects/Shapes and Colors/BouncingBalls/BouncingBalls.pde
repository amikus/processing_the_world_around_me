/*
Bouncing balls
*/

// For holding ball qualities
float ballX, ballY, ballDiameter, ballRadius;
float ballHorizontalSpeed, ballVerticalSpeed;
float ballMinimumBounce, ballMinimumRoll;  // thresholds below which ball should stop moving

// to simulate physical forces outside of ball
// these are magic numbers for now, at least until my physics knowledge improves
float gravity = 0.1;
float surfaceResistanceFactor = 0.75;
float rollingResistanceFactor = 0.99;

boolean ballCanFall = false;  // when true, ball can continue to fall

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
  
  makeBall(100);
  
}

void draw() {
  background(240);
  
  drawBall();
  
  if (ballCanFall) {
    updateBallPosition();
  }
}

void mousePressed() {
  ballCanFall = !ballCanFall;
}

void makeBall(float diameter) {
  // initialize ball qualities;
  ballDiameter = diameter;
  ballRadius = ballDiameter/2;
  ballX = ballRadius;
  ballY = ballRadius;
  ballHorizontalSpeed = 2;
  ballVerticalSpeed = 1;
  // these are magic numbers, but the simulation works with them,
  // physics knowledge too poor at this time to develop more fully
  ballMinimumBounce = .5;
  ballMinimumRoll = .001;
}

void drawBall() {
  ellipse(ballX, ballY, ballDiameter, ballDiameter);  
}

void updateBallPosition() {
    
  // check to see whether ball should bounce
  // if so, apply bounce
  applyHorizontalBounce();
  applyVerticalBounce();
  
  // apply gravity
  applyGravity();
  
  // determine whether ball should keep moving vertically or horizontally
  checkWhetherBallShouldStop();
    
  // update x and y positions
  ballX += ballHorizontalSpeed;
  ballY += ballVerticalSpeed;
}

float applySurfaceResistance(float speed) {
  return -speed * surfaceResistanceFactor;
}

void applyHorizontalBounce() {
  // At left and right edges of window, reverse direction and simulate absorption of
  // energy into wall when ball collides with wall
  if (ballX < ballRadius) {
    ballX = ballRadius;
    ballHorizontalSpeed = applySurfaceResistance(ballHorizontalSpeed);
  } else if ( ballX > width - ballRadius) {
    ballX = width-ballRadius;
    ballHorizontalSpeed = applySurfaceResistance(ballHorizontalSpeed);
  }
}

void applyVerticalBounce() {
  // At bottom edge of window, reverse direction and simulate absorption of energy
  // into floor when ball collides with floor
  if (ballY > height - ballRadius) {
    ballY = height - ballRadius;
    ballVerticalSpeed = applySurfaceResistance(ballVerticalSpeed);
  }
}

void applyGravity() {
  // Increase due to gravity unless ball is moving sufficiently slowly
  // to be brought to a full stop
  if (ballY == height - ballRadius && abs(ballVerticalSpeed) <= ballMinimumBounce) {
    ballVerticalSpeed = 0;
    ballY = height-ballRadius;
  } else {
    ballVerticalSpeed += gravity;
  }
}

void checkWhetherBallShouldStop() {
  // If ball no longer has vertical speed, begin to apply rolling resistance
  if (ballY == height - ballRadius && ballVerticalSpeed == 0) {
    ballHorizontalSpeed *= rollingResistanceFactor; 
  }
    
  // If ball is rolling too slowly, bring it to a full horizontal stop
  if (ballY == height - ballRadius && abs(ballHorizontalSpeed) <= ballMinimumRoll) {
    ballHorizontalSpeed = 0;
  } 
}