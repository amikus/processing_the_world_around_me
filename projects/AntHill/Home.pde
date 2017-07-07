class Home{
  
  /**************
  * Variables   *
  **************/
  Point location;     // x,y coordinate of home (top left corner)
  color homeColor;    // color of home
  float radius;       // radius of home
  float diameter;     // diameter of home
  
  /**************
  * Constructor *
  **************/
  Home(Point location, color homeColor, float diameter) {
    this.location = location;
    this.homeColor = homeColor;
    this.diameter = diameter;
    this.radius = diameter / 2;
  }
  
  /**************
  * Modules     *
  **************/  
  // display home on screen
  void display() {
      ellipseMode(CORNER);
      stroke(homeColor);
      fill(homeColor);
      ellipse(location.xCoordinate, location.yCoordinate, diameter, diameter); 
  }
  
  // get home location
  Point getLocation() {
    return location;
  }
  
}