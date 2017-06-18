class RolloverRect{
  
  /**************
  * Variables   *
  **************/
  float xPosition;        // x coordinate
  float yPosition;        // y coordinate
  
  float rolloverHeight;   // height of rollover
  float rolloverWidth;    // width of rollover

  boolean rolloverIsActive; // whether or not rollover is currently active (true indicates active)
  
  color activeColor;      // color of rollover when it's in active state
  color inactiveColor;    // color of rollover when it's in inactive state
  
  /**************
  * Constructor *
  **************/
  RolloverRect(float xPosition, float yPosition, float rolloverHeight, float rolloverWidth, color inactiveColor, color activeColor) {
    
    this.xPosition = xPosition;  
    this.yPosition = yPosition;
    
    this.rolloverHeight = rolloverHeight;
    this.rolloverWidth = rolloverWidth;
    
    this.activeColor = activeColor;
    this.inactiveColor = inactiveColor;

  }
  
  /**************
  * Methods     *
  **************/
  // depending upon rollover state, set fill and outline color
  void getRolloverColor() {
    
    // if user clicks within boundaries of button, toggle its on/off status
    if (mouseX >= xPosition && mouseX <= (xPosition + rolloverWidth) &&
        mouseY >= yPosition && mouseY <= (yPosition + rolloverHeight)) {
        
        fill(activeColor);
        
    } else {
        fill(inactiveColor);
    }
    
  }
  
  // display rollover on screen
  void display() {
    
    stroke(0); 
    rectMode(CENTER);
  
    // drawing mode for shape 
    rectMode(CORNER);
    
    getRolloverColor();
    
    rect(xPosition, yPosition, rolloverWidth, rolloverHeight);
  }

}