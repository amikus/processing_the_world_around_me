class LineGenerator {
  
  /**************
  * Variables   *
  **************/      
  
  float penSize;       // line thickness
  color penColor;      // line color
  
  String lineType;     // can be straight, random, or perlin
  
  /**************
  * Constructor *
  **************/
  LineGenerator(float penSize, color lineColor, String lineType) {    
    
    this.penSize = penSize;
    this.penColor = lineColor;
    
    this.lineType = lineType;
    
  }
  
  /**************
  * Methods     *
  **************/
  
  // display line to screen
  void display() {
    
    // pen qualities
    fill(15);
    noStroke();
    ellipseMode(CENTER);
    
    // loop through every x coordinate
    for (int xCoordinate = 0; xCoordinate <= width; xCoordinate++) {
      
      float yCoordinate = calculateYCoordinate(xCoordinate);
    
      // create and draw new Point
      Point point = new Point(xCoordinate, yCoordinate, penSize, penColor);      
      point.display();
    
    }
    
  }
  
  // get y-coordinate
  float calculateYCoordinate(float xCoordinate) {
    
    // draw a different line depending upon lineType specified
    switch(lineType) {
      case "straight":
        return calculateStraightY();
      case "random":
        return calculateRandomY();
      case "perlin":
        return calculatePerlinY(xCoordinate);
      default:
        return 0.0;
    }
    
  }
  
  // calculate new y-coordinate for use in generating straight line
  float calculateStraightY() {
    return height/2.0;
  }
  
  // calculate new y-coordinate for use in generating random line
  float calculateRandomY() {
    return random(0, height);  
  }
  
  // calculate new y-coordinate using Perlin noise algorithm, for use in generating line
  float calculatePerlinY(float xCoordinate) {
      
    // noise value varies and is dependent upon x-coordinate value
    float noiseValue = noise(xCoordinate * .01);
    
    // noiseValue will always be between 0 and 1, so necessary to multiply it by range of possible y values
    return noiseValue * height;
  }

  
}