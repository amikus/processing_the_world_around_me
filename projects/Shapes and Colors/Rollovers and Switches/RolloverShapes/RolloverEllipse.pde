class RolloverEllipse{
  
  /**************
  * Variables   *
  **************/
  float xPosition;        // x coordinate
  float yPosition;        // y coordinate
  
  float diameter;         // diameter of ellipse
  float radius;           // radius of ellipse
  float radiusSquared;    // square of ellipse readius
  
  color activeColor;      // color of rollover when it's in active state
  color inactiveColor;    // color of rollover when it's in inactive state
  
  /**************
  * Constructor *
  **************/
  RolloverEllipse(float xPosition, float yPosition, float diameter, color inactiveColor, color activeColor) {
    
    this.xPosition = xPosition;  
    this.yPosition = yPosition;
    
    this.diameter = diameter;
    this.radius = diameter/2;
    this.radiusSquared = radius * radius;
    
    this.activeColor = activeColor;
    this.inactiveColor = inactiveColor;

  }
  
  /**************
  * Methods     *
  **************/
  // depending upon rollover state, set fill color
  void getRolloverColor(){
    
    if (mouseX >= (xPosition + radius) -sqrt(radiusSquared) && mouseX <= (xPosition + radius) +sqrt(radiusSquared) &&
        mouseY >= (yPosition + radius) -sqrt(radiusSquared) && mouseY <= (yPosition + radius) +sqrt(radiusSquared)) {
          
          fill(activeColor);
          
    } else {
          fill(inactiveColor);
    }
  }
  
  // display rollover on screen
  void display() {
    stroke(0); 
    ellipseMode(CORNER);
    
    getRolloverColor();
    
    ellipse(xPosition, yPosition, diameter, diameter);
  }

}