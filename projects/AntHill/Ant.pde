class Ant{
  
  /**************
  * Variables   *
  **************/      
  Point location;     // x,y coordinate of ant
  color antColor;     // color of ant
  float radius;       // radius of ant
  float diameter;     // diameter of ant
  
  boolean knowsHomeLocation; // does this ant know where its home is?
  boolean knowsFoodLocation; // does this ant know where the food source is?
  boolean carryingFood;      // is this ant currently carrying food?
  
  int xModifier;      // used for updating x coordinate during movement
  int yModifier;      // used for updating y coordinate during movement
  int xTimer;         // timer used for updating x coordinate during movement
  int yTimer;         // timer used for updating y coordinate during movement
  
  int randomWalkVariance;   // degree to which the random walk varies
  int randomTimeInterval;   // constraint for random time interval
  
  /**************
  * Constructor *
  **************/
  Ant(Point location, color antColor, float diameter) {
    
    this.location = location;
    this.antColor = antColor;
    this.diameter = diameter;
    this.radius = diameter / 2;
    
    this.knowsHomeLocation = true;
    this.knowsFoodLocation = false;
    this.carryingFood = false;
    
    this.xModifier = 0;
    this.yModifier = 0;
    this.xTimer = 0;
    this.yTimer = 0;
    
    this.randomWalkVariance = 2;
    this.randomTimeInterval = 60;
  }
  
  /**************
  * Modules     *
  **************/
  
  // display ant to screen
  void display() {
    ellipseMode(CENTER);
    stroke(#555555);
    fill(antColor);
    ellipse(location.xCoordinate, location.yCoordinate, diameter, diameter);     
  }
  
  // check to see if intersecting with trail
  void checkForTrail() {
    
  }
  
  // check to see if intersecting with food
  void checkForFood() {
    
  }
  
  // walk around map, hunting for food
  void huntForFood() {
    
    // whenever xTimer reaches 0, set a new random xModifier and set a new random xTimer
    if (xTimer == 0) {
      xModifier = int(random(-randomWalkVariance, randomWalkVariance));
      xTimer = int(random(0, randomTimeInterval));
    // otherwise, decrement the timer
    } else {
      xTimer--; 
    }
    
    // whenever yTimer reaches 0, set a new random yModifier and set a new random yTimer
    if (yTimer == 0) {
      yModifier = int(random(-randomWalkVariance, randomWalkVariance));
      yTimer = int(random(0, randomTimeInterval)); 
    // otherwise, decrement the timer
    } else {
      yTimer--; 
    }
    
    // update x and y coordinates based on its modifier
    location.xCoordinate += xModifier;
    location.yCoordinate += yModifier;
    
    // constrain x and y coordinates to boundaries of window
    location.xCoordinate = constrain(location.xCoordinate, 0+radius, width-radius);
    location.yCoordinate = constrain(location.yCoordinate, 0+radius, height-radius);    
  }
  
  // create a trail with each step
  void createTrail() {
  }
  
  // toggle carryingFood variable, which indicates whether or not ant is currently carrying food
  void toggleCarryingFood() {
    carryingFood = !carryingFood;  
  }
  
  // toggle knowsHomeLocation, which indicates whether or not ant is currently aware of home location
  void toggleKnowsHomeLocation() {
    knowsHomeLocation = !knowsHomeLocation;
  }
  
  // toggle knowsFoodLocation, which indicates whether or not ant is currently aware of food location
  void toggleKnowsFoodLocation() {
    knowsFoodLocation = !knowsFoodLocation;
  }
  
}