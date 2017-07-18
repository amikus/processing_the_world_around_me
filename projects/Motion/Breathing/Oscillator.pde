class Oscillator {
  
  /**************
  * Variables   *
  **************/      
  
  Point location;    // location of circle's center
  
  float diameter;    // diameter of circle
  
  float theta;        // used to calculate sine value
  float rate;         // rate at which circle increases and decreases
  
  float minimumSize;  // minimum diameter
  float maximumSize;  // maximum diameter
  
  
  /**************
  * Constructor *
  **************/
  Oscillator(Point location, float minimumSize, float maximumSize, float rate ) {    
    
    this.location = location;
    
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
    theta += rate;
  }
  
  // display oscillator to screen
  void display() {
    
    fill(40);
    stroke(0);
    ellipseMode(CENTER);
    
    // map calculated sine value from the range of -1 and 1
    // to the range of minimumSize and maximumSize
    float diameter = map(sin(theta), -1, 1, minimumSize, maximumSize);
     
    ellipse(location.xCoordinate, location.yCoordinate, diameter, diameter);
    
  }
  
}