class Spiral{
  
  /**************
  * Variables   *
  **************/
  PolarPoint polarCoordinate;
  CartesianPoint startingCartesianCoordinate;
  float xOffset;
  float yOffset;
  int penSize;
  color spiralColor;
  
  /**************
  * Constructor *
  **************/
  Spiral(PolarPoint startingPolarCoordinate, int penSize, color spiralColor) {
    
    this.polarCoordinate = startingPolarCoordinate;
    
    // calculate x and y offsets based on starting cartesian coordinate
    this.startingCartesianCoordinate = startingPolarCoordinate.convertToCartesian();
    this.xOffset = startingCartesianCoordinate.xCoordinate;
    this.yOffset = startingCartesianCoordinate.yCoordinate;
    
    // establish pen size and color
    this.penSize = penSize;
    this.spiralColor = spiralColor;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    
    
    
  }
  
}