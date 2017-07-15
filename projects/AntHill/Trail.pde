class Trail{
  
  /**************
  * Variables   *
  **************/
  color trailColor;  // color of trail
  float trailWidth;  // diameter of points that constitute trail
  
  Pheremone[] trail;
  
  /**************
  * Constructor *
  **************/
  Trail(color trailColor, float trailWidth) {
    
    this.trailColor = trailColor;
    this.trailWidth = trailWidth;
    
    this.trail = new Pheremone[0];
    
  }
  
  /**************
  * Modules     *
  **************/
  
  // display trail to screen
  void display() {
    
    // display each point that constitutes the trail array
    for (int i = 0; i < trail.length; i++) {
      trail[i].display();
    }
    
  }
 
  // get pheremone at provided location
  Pheremone getPheremone(int pheremonePosition) {
    return trail[pheremonePosition];
  }
  
  // update trail array to contain new pheremones
  void addToTrail(Point pheremoneLocation) {
    
    Pheremone pheremone = new Pheremone(pheremoneLocation, trailWidth, trailColor);
    trail = (Pheremone[]) append(trail, pheremone);
    
  }
  
  // check for degradation of Pheremones and remove degraded pheremones from trail
  void checkForDegradation() {
    
    int degradedPheremones = 0;
    
    for (int i = 0; i < trail.length; i++) {
      if (trail[i].isDegraded()) {
        degradedPheremones++;
      }
    }
    
    if (degradedPheremones > 0) {
      trail = (Pheremone[]) subset(trail, degradedPheremones);
    }
    
  }
  
}