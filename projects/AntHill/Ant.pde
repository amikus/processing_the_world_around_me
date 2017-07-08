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
  void huntForFood() {
    
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
  
}