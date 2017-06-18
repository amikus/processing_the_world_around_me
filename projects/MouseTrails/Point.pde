class Point{
  
  /**************
  * Variables   *
  **************/
  float xCoordinate;
  float yCoordinate;
  float diameter;        // diameter of point
  float pointColor;      // pointColor          
  
  /**************
  * Constructor *
  **************/
  Point(float xCoordinate, float yCoordinate, float diameter, color pointColor) {
    this.xCoordinate = xCoordinate;
    this.yCoordinate = yCoordinate;
    this.diameter = diameter;
    this.pointColor = pointColor;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    stroke(pointColor);
    fill(pointColor);
    ellipse(xCoordinate, yCoordinate, diameter, diameter);  
  }
  
}