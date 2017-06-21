class RolloverStripe{
  
  /**************
  * Variables   *
  **************/
  float xPosition;        // x coordinate
  float stripeWidth;      // width of Stripe
  float speed;            // speed at which stripe is moving
  boolean isActive;       // is the stripe in an active rollover state (is the mouse over it)?
  
  color activeColor;      // color of rollover when it's in active state
  color inactiveColor;    // color of rollover when it's in inactive state
  
  /**************
  * Constructor *
  **************/
  RolloverStripe(float xPosition, float stripeWidth, float speed, color inactiveColor, color activeColor) {
    
    this.xPosition = xPosition; 
    this.stripeWidth = stripeWidth;
    this.speed = speed;
    this.isActive = false;
    
    this.inactiveColor = inactiveColor;
    this.activeColor = activeColor;

  }
  
  /**************
  * Methods     *
  **************/
  // depending upon rollover state, set fill color
  void getRolloverColor(){
    
    if ((mouseX > xPosition) && (mouseX < xPosition+stripeWidth)) {
      fill(activeColor);
    } else {
      fill(inactiveColor);
    }
  }
  
  // move the stripe from left to right, along the y axis
  void move() {
    xPosition += speed;
    if (xPosition > (width + stripeWidth)) {
      xPosition = -stripeWidth;
    }
  }
  
  // display rollover on screen
  void display() {
    
    noStroke();
    rectMode(CORNER);
    
    getRolloverColor();
    
    rect(xPosition, 0, stripeWidth, height);
    
  }
  
}