class Food{
  
  /**************
  * Variables   *
  **************/      
  Point location;     // x,y coordinate of food (top right corner)
  color foodColor;    // color of food
  float radius;       // radius of food
  float diameter;     // diameter of food
  
  
  /**************
  * Constructor *
  **************/
  Food(Point location, color foodColor, float diameter) {
    this.location = location;
    this.foodColor = foodColor;
    this.diameter = diameter;
    this.radius = diameter / 2;
    
  }
  
  /**************
  * Modules     *
  **************/
  
  // display food to screen
  void display() {
    ellipseMode(CENTER);
    stroke(foodColor);
    fill(foodColor);
    ellipse(location.xCoordinate, location.yCoordinate, diameter, diameter);       
  }
  
  // get food location
  Point getLocation() {
    return location;
  }
  
  // reduce food diameter
  void reduceSize() {
    diameter = diameter - 1;
  }
  
}