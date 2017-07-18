class Oscillator {
  
  /**************
  * Variables   *
  **************/      
  
  float diameter;    // diameter of circle
  float radius;      // radius of circle
  
  float theta;        // used to calculate sine value
  
  float rate;         // rate at which circle increases and decreases
  
  float minimumSize;  // minimum diameter
  float maximumSize;  // maximum diameter
  
  
  /**************
  * Constructor *
  **************/
  Oscillator(float xCoordinate, float yCoordinate, float diameter, float rate, float minimumSize, float maximumSize) {    
    
    this.diameter = diameter;
    this.radius = diameter/2;
    
    theta = 0;
    
    this.rate = rate;
    
    this.minimumSize = minimumSize;
    this.maximumSize = maximumSize;
    
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
    
    // map calculated sine value from the range of -1 and 1
    // to the range of minimumSize and maximumSize
    float x = map(sin(theta), -1, 1, minimumSize, maximumSize);
     
    ellipse(x, y, diameter, diameter);
    
  }
  
}