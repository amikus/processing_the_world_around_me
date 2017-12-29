class Pattern {
  
  /**************
  * Variables   *
  **************/
  
  String patternType;  // Concentric, Row, Cross, Branch
  
  float xOffset;       // x and y coordinates of starting position
  float yOffset;
  
  float radius;        // radius of starting circle
  float branchHeight;  // height of branch, used only for branching pattern
  
  int penSize;         // pen characteristics
  color penColor;
  
  /**************
  * Constructor *
  **************/
  Pattern(String patternType, CartesianPoint startingCartesianPoint, float startingSize, int penSize, color penColor) {
    
    this.patternType = patternType;
    
    // calculate x and y offsets based on starting cartesian coordinate
    this.xOffset = startingCartesianPoint.xCoordinate;
    this.yOffset = startingCartesianPoint.yCoordinate;
    
    if (this.patternType == "Concentric" || this.patternType == "Row" || this.patternType == "Cross") {
      this.radius = startingSize;
    } else if (this.patternType == "Branch") {
      this.branchHeight = startingSize;
    }
    
    this.penSize = penSize;
    this.penColor = penColor;
  }
  
  /**************
  * Modules     *
  **************/  
  void display() {
    
    
    stroke(penColor);
    noFill();
    
    switch(patternType){
      case "Concentric":
        drawConcentric(xOffset, yOffset, radius);
        break;
      case "Row":
        drawRow(xOffset, yOffset, radius);
        break;
      case "Cross":
        drawCross(xOffset, yOffset, radius);
        break;
      case "Branch":
        drawBranch(xOffset, yOffset, branchHeight);
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
  
  // recursive function for drawing upside-down branching tree structure
  void drawBranch(float x, float y, float h) {
    println("Branch");  
  }

}