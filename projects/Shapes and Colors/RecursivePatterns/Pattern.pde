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
    
    switch(patternType){
      case "Concentric":
        println("Concentric was chosen");
        break;
      case "Row":
        println("Row was chosen");
        break;
      case "Cross":
        println("Cross was chosen");
        break;
    }
    
  }
  
  // recursive function for drawing concentric ellipse pattern
  void drawConcentric(float x, float y, float radius) {
    
    ellipse(x, y, radius, radius);
    
    // recursively adjust ellipse size
    if (radius > 2) {
      radius *= 0.75;
      drawConcentric(x, y, radius);
    }
    
  }
  
  // recursive function for drawing row ellipse pattern
  void drawRow(float x, float y, float radius) {
    
    ellipse (x, y, radius, radius);
    
    // recursively adjust ellipse size and position before redrawing
    if (radius > 2) {
      drawRow(x + radius/2, y, radius/2);
      drawRow(x - radius/2, y, radius/2);
    }
    
  }
 
  // recursive function for drawing cross ellipse pattern
  void drawCross(float x, float y, float radius) {
    
    ellipse(x, y, radius, radius);
    
    // recursively adjust ellipse size and position before redrawing
    if (radius > 8) {
      drawCross(x + radius/2, y, radius/2);
      drawCross(x - radius/2, y, radius/2);
      drawCross(x, y + radius/2, radius/2);
      drawCross(x, y - radius/2, radius/2);
    }
    
  }

}