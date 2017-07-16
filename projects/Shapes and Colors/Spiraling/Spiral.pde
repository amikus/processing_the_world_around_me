class Spiral{
  
  /**************
  * Variables   *
  **************/
  PolarPoint polarCoordinate;
  CartesianPoint startingCartesianCoordinate;
  int penSize;
  color spiralColor;
  
  /**************
  * Constructor *
  **************/
  Spiral(PolarPoint startingPolarCoordinate, int penSize, color spiralColor) {
    this.polarCoordinate = startingPolarCoordinate;
    this.startingCartesianCoordinate = startingPolarCoordinate.convertToCartesian();
    this.penSize = penSize;
    this.spiralColor = spiralColor;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    
    
  }
  
}