class PolarPoint{
  
  /**************
  * Variables   *
  **************/
  float radius;
  float theta;   
  
  /**************
  * Constructor *
  **************/
  PolarPoint(float radius, float theta) {
    this.radius = radius;
    this.theta = theta;
  }
  
  /**************
  * Modules     *
  **************/  
  CartesianPoint convertToCartesian() {
    
    float xCoordinate = radius * cos(theta);
    float yCoordinate = radius * sin(theta);
    
    return new CartesianPoint(xCoordinate, yCoordinate);
  }
  
}