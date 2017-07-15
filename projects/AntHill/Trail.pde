class Trail{
  
  /**************
  * Variables   *
  **************/
  int trailLength;   // length of trail
  color trailColor;  // color of trail
  float trailWidth;  // diameter of points that constitute trail
  
  Pheremone[] trail;
  
  /**************
  * Constructor *
  **************/
  Trail(int trailLength, color trailColor, float trailWidth) {
    
    this.trailLength = trailLength;
    this.trailColor = trailColor;
    this.trailWidth = trailWidth;
    
    trail = new Pheremone[trailLength];
    
    // initialize array of points
    for (int i = 0; i < this.trailLength; i++) {
      trail[i] = new Pheremone(new Point(0, 0), trailWidth, trailColor);
    }
    
  }
  
  /**************
  * Modules     *
  **************/
  
  // display trail to screen
  void display() {
    
    // display each point that constitutes the trail array
    for (int i = 0; i < this.trailLength; i++) {
      trail[i].display();
    }
    
  }
  
  // update trail array to contain new pheremones
  void updateTrail(Pheremone pheremone) {

    // shift each position in array by 1
    for (int i = 0; i < trailLength-1; i++) {    
      trail[i] = trail[i+1];
      trail[i] = trail[i+1];
    }
    
    // update final position in array to be new position
    trail[trailLength - 1] = pheremone;
    
  }
  
}