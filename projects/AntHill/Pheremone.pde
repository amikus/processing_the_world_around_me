class Pheremone{
  
  /**************
  * Variables   *
  **************/
  Point location;
  float diameter;
  color pheremoneColor;
  
  /**************
  * Constructor *
  **************/
  Pheremone(Point location, float diameter, color pheremoneColor) {
    this.location = location;
    this.diameter = diameter;
    this.pheremoneColor = pheremoneColor;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    stroke(pheremoneColor);
    fill(pheremoneColor);
    ellipse(location.xCoordinate, location.yCoordinate, diameter, diameter);  
  }
  
}