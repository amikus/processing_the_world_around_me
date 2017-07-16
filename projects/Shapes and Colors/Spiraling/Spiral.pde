class Spiral{
  
  /**************
  * Variables   *
  **************/
  PolarPoint polarCoordinate;
  CartesianPoint startingCartesianCoordinate;
  float xOffset;
  float yOffset;
  int penSize;
  color penColor;
  
  /**************
  * Constructor *
  **************/
  Spiral(CartesianPoint startingCartesianPoint, int penSize, color penColor) {
    
    this.polarCoordinate = new PolarPoint(0, 0);
    
    // calculate x and y offsets based on starting cartesian coordinate
  
    this.xOffset = startingCartesianPoint.xCoordinate;
    this.yOffset = startingCartesianPoint.yCoordinate;
    println("Starting coordinates: ("+ xOffset + ", " + yOffset + ")");
    
    // establish pen size and color
    this.penSize = penSize;
    this.penColor = penColor;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    
    CartesianPoint currentCartesianPoint = polarCoordinate.convertToCartesian();
    float currentX = currentCartesianPoint.xCoordinate;
    float currentY = currentCartesianPoint.yCoordinate;
    
    noStroke();
    fill(penColor);
    ellipse(currentX+xOffset, currentY+yOffset, penSize, penSize);
    
    // increment angle
    polarCoordinate.theta += 0.01;
    polarCoordinate.radius += 0.1;
    
  }
  
}