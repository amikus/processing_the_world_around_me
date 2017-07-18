class Oscillator {
  
  /**************
  * Variables   *
  **************/      
  
  float diameter;    // diameter of pendulum ball
  
  float xTheta;      // current xTheta
  float yTheta;      // current yTheta
  
  float xThetaRate;  // rate at which xTheta increases
  float yThetaRate;  // rate at which yTheta increases
  
  /**************
  * Constructor *
  **************/
  Oscillator(float diameter, float xThetaRate, float yThetaRate) {
    
    xTheta = 0;
    yTheta = 0;
    
    this.diameter = diameter;
    this.xThetaRate = xThetaRate;
    this.yThetaRate = yThetaRate;
    
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
    
    float x = map(sin(xTheta), -1, 1, 0, width);
    float y = map(sin(yTheta), -1, 1, 0, width);
    
    ellipse(x, y, 16, 16);
    
  }
  
}