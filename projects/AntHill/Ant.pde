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
  boolean isCarryingFood;      // is this ant currently carrying food?
  
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
    this.isCarryingFood = false;
    
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
  
  // check to see if ant intersects with home
  boolean intersectsWithHome(Home home) {
    
    // calculate distance between ant and home using distance formula/pythagorean theorem
    float distance = sqrt(sq(home.location.xCoordinate-this.location.xCoordinate) + sq(home.location.yCoordinate-this.location.yCoordinate));
    
    // if the objects are closer to each other than the sum of their radiuses, they are intersecting
    if (distance < this.radius + home.radius) {
      return true;
    } else {
      return false;
    }
    
  }
  
  // check to see if ant intersects with food
  boolean intersectsWithFood(Food food) {
    
    // calculate distance between ant and food using distance formula/pythagorean theorem
    float distance = sqrt(sq(food.location.xCoordinate-this.location.xCoordinate) + sq(food.location.yCoordinate-this.location.yCoordinate));
    
    // if the objects are closer to each other than the sum of their radiuses, they are intersecting
    if (distance < this.radius + food.radius) {
      return true;
    } else {
      return false;
    }
    
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
  
  // move towards a given location
  void walkToLocation(Point newLocation) {
    
    // calculate distance to move along each axis
    float yAxisDistance = location.yCoordinate - newLocation.yCoordinate; 
    float xAxisDistance = location.xCoordinate - newLocation.xCoordinate;
    
    // calculate slope (m) and y-intercept (b)
    float m = yAxisDistance/xAxisDistance;
    float b = location.yCoordinate - (m * location.xCoordinate);
    
    // if ant has further to walk along x axis
    if (xAxisDistance >= yAxisDistance) {
      
      // depending upon whether current x-coordinate is higher or lower than
      // new location's x-coordinate, either add or subtract one to get new x-coordinate
      if (location.xCoordinate >= newLocation.xCoordinate) {
        location.xCoordinate -= 1;
      } else {
        location.xCoordinate += 1;
      }
      
      // use y = mx+b to calculate y-coordinate based on x-coordinate
      location.yCoordinate = (m * location.xCoordinate) + b;
    } 
    // if ant has further to walk along y axis
    else {
      
      // depending upon whether current y-coordinate is higher or lower than
      // new location's y-coordinate, either add or subtract one to get new y-coordinate
      if (location.yCoordinate >= newLocation.yCoordinate) {
        location.yCoordinate -= 1;
      } else {
        location.yCoordinate += 1;
      }
      
      // use x = (y-b)/m to calculate x-coordinate based on y-coordinate
      location.xCoordinate = (location.yCoordinate - b)/m;
    }
    
    // constrain x and y coordinates to boundaries of window
    location.xCoordinate = constrain(location.xCoordinate, 0+radius, width-radius);
    location.yCoordinate = constrain(location.yCoordinate, 0+radius, height-radius);
  }
   
  // create a trail with each step
  void createTrail() {
  }
  
}