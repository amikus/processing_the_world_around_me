class Trail{
  
  /**************
  * Variables   *
  **************/
  int trailLength;   // length of trail
  int trailColor;    // color of trail
  int trailWidth;    // diameter of points that constitute trail
  
  Point[] trail;
  
  /**************
  * Constructor *
  **************/
  Trail(int trailLength, color trailColor, color trailWidth) {
    
    this.trailLength = trailLength;
    this.trailColor = trailColor;
    this.trailWidth = trailWidth;
    
    trail = new Point[trailLength];
    
    // initialize array of points
    for (int i = 0; i < this.trailLength; i++) {
      trail[i] = new Point(0, 0, trailWidth, trailColor);
    }
    
  }
  
  /**************
  * Modules     *
  **************/
  
  // display trail to screen
  void display() {
  
    updateTrail();
    
    
    for (int i = 0; i < this.trailLength; i++) {
      trail[i].display();
    }
    
  }
  
  // update trail array to contain new Points
  void updateTrail() {

    // shift each position in array by 1
    for (int i = 0; i < trailLength-1; i++) {    
      trail[i] = trail[i+1];
      trail[i] = trail[i+1];
    }
    
    // update final position in array to be current mouse possition
    trail[trailLength - 1] = new Point(mouseX, mouseY, 50, 255);
    
  }
  
}