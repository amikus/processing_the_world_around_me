class Pheremone{
  
  /**************
  * Variables   *
  **************/
  Point location;
  float diameter;
  float radius;
  color pheremoneColor;
  int timer;        // pheremone will degrade after this many ticks
  int timerLength;  // ticks on timer
  
  /**************
  * Constructor *
  **************/
  Pheremone(Point location, float diameter, color pheremoneColor) {
    this.location = location;
    this.diameter = diameter;
    this.radius = diameter/2;
    this.pheremoneColor = pheremoneColor;
    
    this.timerLength = 200;
    this.timer = timerLength;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    stroke(pheremoneColor);
    fill(pheremoneColor);
    ellipse(location.xCoordinate, location.yCoordinate, diameter, diameter);  
  }
  
  // check to see if pheremone is degraded
  boolean isDegraded() {
    
    // if timer has reached zero, reset it and return true
    if (timer == 0) {
      timer = timerLength;
      return true;
    }
    
    // otherwise, decrement timer and return false
    else {
      timer--;
      return false;
    }
  }
  
}