/********************
* Ball Class        *
********************/
class Ball {

  /**************
  * Variables   *
  **************/ 
  float xPosition, yPosition, diameter, radius;
  float horizontalSpeed, verticalSpeed;
  float minimumBounce, minimumRoll;  // thresholds below which ball should stop moving
  float gravity;                     // gravity of environment in which ball is bouncing
  Surface surface;                   // surface off which ball will bounce
  
  /**************
  * Constructor *
  ***************/ 
  
  Ball(float diameter, float xPosition, float yPosition, float gravity, Surface surface) {
    
    this.gravity = gravity;
    this.surface = surface;
    
    this.diameter = diameter;
    this.radius = diameter/2;
    
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    
    this.horizontalSpeed = 2;
    this.verticalSpeed = 1;
    
    // these are magic numbers, but the simulation works with them,
    // physics knowledge too poor at this time to develop more fully
    this.minimumBounce = .5;
    this.minimumRoll = .001;
    
  }
  
  /**************
  * Methods     *
  ***************/
  
  // for drawing the ball
  void display() {
    stroke(25);
    strokeWeight(2);
    ellipseMode(CENTER);
    
    fill(175, 175, 175, 255); 
    
    ellipse(xPosition, yPosition, diameter, diameter); 
  }
  
  // update the ball's position
  void updatePosition() {
      
    // apply physics forces to ball
    applyForces();
      
    // update x and y positions
    xPosition += horizontalSpeed;
    yPosition += verticalSpeed;

  }
  
  // apply physical forces to ball
  void applyForces() {
    // check to see whether ball should bounce
    // if so, apply bounce
    applyHorizontalBounce();
    applyVerticalBounce();
    
    // apply gravity
    applyGravity();
    
    // determine whether ball should keep moving vertically or horizontally
    checkWhetherBallShouldStop();
  }


  float applySurfaceResistance(float speed) {
    return -speed * surface.bounceAbsorptionFactor;
  }
  
  void applyHorizontalBounce() {
    // At left and right edges of window, reverse direction and simulate absorption of
    // energy into wall when ball collides with wall
    if (xPosition < radius) {
      xPosition = radius;
      horizontalSpeed = applySurfaceResistance(horizontalSpeed);
    } else if ( xPosition > width - radius) {
      xPosition = width-radius;
      horizontalSpeed = applySurfaceResistance(horizontalSpeed);
    }
  }
  
  void applyVerticalBounce() {
    // At bottom edge of window, reverse direction and simulate absorption of energy
    // into floor when ball collides with floor
    if (yPosition > height - radius) {
      yPosition = height - radius;
      verticalSpeed = applySurfaceResistance(verticalSpeed);
    }
  }
  
  void applyGravity() {
    // Increase due to gravity unless ball is moving sufficiently slowly
    // to be brought to a full stop
    if (yPosition == height - radius && abs(verticalSpeed) <= minimumBounce) {
      verticalSpeed = 0;
      yPosition = height-radius;
    } else {
      verticalSpeed += gravity;
    }
  }
  
  void checkWhetherBallShouldStop() {
    // If ball no longer has vertical speed, begin to apply rolling resistance
    if (yPosition == height - radius && verticalSpeed == 0) {
      horizontalSpeed *= surface.rollingResistanceFactor; 
    }
      
    // If ball is rolling too slowly, bring it to a full horizontal stop
    if (yPosition == height - radius && abs(horizontalSpeed) <= minimumRoll) {
      horizontalSpeed = 0;
    } 
  }
}