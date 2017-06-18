class Switch{
  
  /**************
  * Variables   *
  **************/
  float xPosition;        // x coordinate
  float yPosition;        // y coordinate
  
  float switchHeight;     // height of switch
  float switchWidth;      // width of switch

  boolean switchIsActive; // whether or not switch is currently active (true indicates active)
  
  color activeColor;      // color of switch when it's in active state
  color inactiveColor;    // color of switch when it's in inactive state

  // colors used for outlining shapes
  color darkGray = color(40, 40, 40, 255);
  color lightGray = color(200, 200, 200, 255);
  
  /**************
  * Constructor *
  **************/
  Switch(float xPosition, float yPosition, float switchHeight, float switchWidth, color inactiveColor, color activeColor) {
    this.xPosition = xPosition;  
    this.yPosition = yPosition;
    this.switchHeight = switchHeight;
    this.switchWidth = switchWidth;
    
    this.activeColor = activeColor;
    this.inactiveColor = inactiveColor;

  }
  
  /**************
  * Methods     *
  **************/
  // flip switch between active and inactive
  void toggleSwitch() {
    
    // if user clicks within boundaries of button, toggle its on/off status
    if (mouseX >= xPosition && mouseX <= (xPosition + switchWidth) &&
        mouseY >= yPosition && mouseY <= (yPosition + switchHeight)) {
        
        switchIsActive = !switchIsActive;
    }
    
  }
  
  // depending upon switch state, set fill and outline color
  void getSwitchColor() {
    
    if (switchIsActive) {
      stroke(darkGray);
      fill(activeColor);
    } else {
      stroke(lightGray);
      fill(inactiveColor);
    }
    
  }
  
  // display switch on screen
  void display() {
    // drawing mode for shape 
    rectMode(CORNER);
    getSwitchColor();
    rect(xPosition, yPosition, switchWidth, switchHeight);
  }

}