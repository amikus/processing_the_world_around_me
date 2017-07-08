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
  float previousXCoordinate;  // previous x coordinate
  float previousYCoordinate;  // previous y coordinate
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
    this.previousXCoordinate = 0;
    this.previousYCoordinate = 0;
    
    this.randomWalkVariance = 5;
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
  
  // randomly walk around map, hunting for food
  // true random walk, with xModifier and yModifier changed at consistent speed
  void huntForFoodRandomWalk() {
    // randomly select an x and y modifier
    xModifier = int(random(-randomWalkVariance, randomWalkVariance));
    yModifier = int(random(-randomWalkVariance, randomWalkVariance));
    
    // update x and y coordinate
    location.xCoordinate += xModifier;
    location.yCoordinate += yModifier;
    
    // constrain x and y coordinate to boundaries of window
    location.xCoordinate = constrain(location.xCoordinate, 0+radius, width-radius);
    location.yCoordinate = constrain(location.yCoordinate, 0+radius, height-radius);
  }
  
  // randomly walk around map, hunting for food
  // current and previous location are tracked and a linear equation is written based on them
  // third point is calculated on this line, then varied by random amount
  void huntForFoodRandomWalkWithThirdCoordinateModification() {
    
    println("location.yCoordinate: " + location.yCoordinate);
    println("previousYCoordinate: " + previousYCoordinate);
    println("location.xCoordinate: " + location.xCoordinate);
    println("previousXCoordinate: " + previousXCoordinate);
    println();
    float slope = 0;
    if (location.xCoordinate- previousXCoordinate != 0) {
      slope = (location.yCoordinate - previousYCoordinate)/(location.xCoordinate - previousXCoordinate);
    }
    float intercept = location.yCoordinate - (slope * location.xCoordinate); 
    float newXCoordinate = location.xCoordinate + .1; 
    float newYCoordinate = (slope * newXCoordinate) + intercept;
    
    println("slope: " + slope);
    println("intercept: " + intercept);
    println("coordinates on line: (" + newXCoordinate + ", " + newYCoordinate + ")");
    println("****************");
    
    // randomly select an x and y modifier
    xModifier = int(random(-randomWalkVariance, randomWalkVariance));
    yModifier = int(random(-randomWalkVariance, randomWalkVariance));
    
    previousXCoordinate = location.xCoordinate;
    previousYCoordinate = location.yCoordinate;
    
    location.xCoordinate = newXCoordinate + xModifier;
    location.yCoordinate = newYCoordinate + yModifier;
    
    // constrain x and y coordinate to boundaries of window
    location.xCoordinate = constrain(location.xCoordinate, 0+radius, width-radius);
    location.yCoordinate = constrain(location.yCoordinate, 0+radius, height-radius);    
  }
  
  // randomly walk around map, hunting for food
  // xModifier and yModifier remain consistent for a random period of time, then are randomly changed again
  void huntForFoodRandomWalkWithTimers() {
    
    if (xTimer == 0) {
      xModifier = int(random(-randomWalkVariance, randomWalkVariance));
      xTimer = int(random(0, randomTimeInterval)); 
    } else {
      xTimer--; 
    }
    
    if (yTimer == 0) {
      yModifier = int(random(-randomWalkVariance, randomWalkVariance));
      yTimer = int(random(0, randomTimeInterval)); 
    } else {
      yTimer--; 
    }
    
    // update x and y coordinate
    location.xCoordinate += xModifier;
    location.yCoordinate += yModifier;
    
    // constrain x and y coordinate to boundaries of window
    location.xCoordinate = constrain(location.xCoordinate, 0+radius, width-radius);
    location.yCoordinate = constrain(location.yCoordinate, 0+radius, height-radius);    
  }
  
  // create a trail with each step
  void createTrail() {
  }
  
  // update ant's position
  void updatePosition() {
    
  }
  
  // toggle carryingFood variable, which indicates whether or not ant is currently carrying food
  void toggleCarryingFood() {
    
  }
  
  // toggle knowsHomeLocation, which indicates whether or not ant is currently aware of home location
  void toggleKnowsHomeLocation() {
    
  }
  
  // toggle knowsFoodLocation, which indicates whether or not ant is currently aware of food location
  void toggleKnowsFoodLocation() {
    
  }
  
}