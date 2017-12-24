class Pattern {
  
  /**************
  * Variables   *
  **************/
  
  String patternType;  // Concentric, Row, Cross
  float xOffset;       // x and y coordinates of starting position
  float yOffset;
  float radius;        // radius of starting circle
  int penSize;         // pen characteristics
  color penColor;
  
  /**************
  * Constructor *
  **************/
  Pattern(String patternType, CartesianPoint startingCartesianPoint, float radius, int penSize, color penColor) {
    
    this.patternType = patternType;
    
    // calculate x and y offsets based on starting cartesian coordinate
    this.xOffset = startingCartesianPoint.xCoordinate;
    this.yOffset = startingCartesianPoint.yCoordinate;
    
    this.radius = radius;
    
    this.penSize = penSize;
    this.penColor = penColor;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    
    noStroke();
    fill(penColor);
    
  }
  
}