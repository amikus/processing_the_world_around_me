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
    
    // draw a different line depending upon lineType specified
    switch(lineType) {
      case "straight":
        displayStraight();
        break;
      case "random":
        displayRandom();
        break;
      case "perlin":
        displayPerlin();
        break;
    }
    
  }
  
  // draw a straight line (with a single y coordinate)
  void displayStraight() {
    
    // loop through every x coordinate
    for (int xCoordinate = 0; xCoordinate <= width; xCoordinate++) {
      
      // calculate new y-coordinate for each x coordinate
      float yCoordinate = height/2;
      
      // create and draw new Point
      Point point = new Point(xCoordinate, yCoordinate, penSize, penColor);      
      point.display();
    }
    
  }
  
  // draw a line with randomly generated y coordinates
  void displayRandom() {
    
    // loop through every x coordinate
    for (int xCoordinate = 0; xCoordinate <= width; xCoordinate++) {
      
      // calculate new y-coordinate for each x coordinate
      float yCoordinate = random(0, height);
      
      // create and draw new Point
      Point point = new Point(xCoordinate, yCoordinate, penSize, penColor);      
      point.display();
        
    }
    
  }
  
  // draw a line with y coordinates generated using Perlin noise algorithm
  void displayPerlin() {
    
    // loop through every x coordinate
    for (int xCoordinate = 0; xCoordinate <= width; xCoordinate++) {
      
      // get new Perlin noise value for each x
      // multiplying x * .01 serves same purpose as incrementing .01 in a separate variable on each loop
      float noiseValue = noise(xCoordinate * .01);
      
      // calculate new y-coordinate for each x coordinate
      // noiseValue will always be between 0 and 1, so necessary to multiply it by range of possible y values
      float yCoordinate = noiseValue * height;
      
      // create and draw new Point
      Point point = new Point(xCoordinate, yCoordinate, penSize, penColor);      
      point.display();  
    }
    
  }

  
}