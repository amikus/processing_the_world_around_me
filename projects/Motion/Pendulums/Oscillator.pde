class Oscillator {
  
  /**************
  * Variables   *
  **************/      
  
  float diameter;    // diameter of ball
  float radius;      // radius of ball
  
  float xTheta;      // current xTheta
  float yTheta;      // current yTheta
  
  float xThetaRate;  // rate at which xTheta increases
  float yThetaRate;  // rate at which yTheta increases
  
  float xRangeStart; // leftmost x-coordinate of oscillator's range
  float xRangeEnd;   // rightmost x-coordinate of oscillator's range
  float yRangeStart; // topmost y-coordinate of oscillator's range
  float yRangeEnd;   // topmost y-coordinate of oscillator's range
  
  /**************
  * Constructor *
  **************/
  Oscillator(float diameter, float xThetaRate, float yThetaRate, float xRangeStart, float yRangeStart) {    
    
    this.diameter = diameter;
    this.radius = diameter/2;
    
    xTheta = 0;
    yTheta = 0;
    
    this.xThetaRate = xThetaRate;
    this.yThetaRate = yThetaRate;
    
    this.xRangeStart = xRangeStart;
    this.xRangeEnd = width - xRangeStart;
    this.yRangeStart = yRangeStart;
    this.yRangeEnd = height - yRangeStart;
    
  }
  
  /**************
  * Methods     *
  **************/
  
  // update oscillator's position
  void oscillate() {
    xTheta += xThetaRate;
    yTheta += yThetaRate;
  }
  
  // display oscillator to screen
  void display() {
    
    fill(0);
    stroke(0);
    strokeWeight(diameter/20);
    
    // map calculated sin and cos values from the range of -1 and 1
    // to the range of xRangeStart and xRangeEnd
    // radius is used to prevent ball from going beyond edge of screen 
    float x = map(sin(xTheta), -1, 1, xRangeStart+radius, xRangeEnd-radius);
    float y = map(cos(yTheta), -1, 1, yRangeStart+radius, yRangeEnd - radius);
    
    line(width/2, 0, x, y);
    //println(diameter);   
    ellipse(x, y, diameter, diameter);
    
  }
  
}