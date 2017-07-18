class LineGenerator {
  
  /**************
  * Variables   *
  **************/      
  
  float penSize = height/100; // line thickness
  
  String lineType;     // can be straight, random, or perlin
  
  /**************
  * Constructor *
  **************/
  LineGenerator(String lineType) {    
    
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
    for (int x = 0; x <= width; x++) {
      
      // calculate new y-coordinate for each x coordinate
      float yCoordinate = height/2 - penSize;
      
      // draw to screen
      ellipse(x, yCoordinate, penSize, penSize);  
    }
    
  }
  
  // draw a line with randomly generated y coordinates
  void displayRandom() {
    
    // loop through every x coordinate
    for (int x = 0; x <= width; x++) {
      
      // calculate new y-coordinate for each x coordinate
      // this is not correct at the moment
      float yCoordinate = height/2 - penSize;
      
      // draw to screen
      ellipse(x, yCoordinate, penSize, penSize);  
    }
    
  }
  
  // draw a line with y coordinates generated using Perlin noise algorithm
  void displayPerlin() {
    
    // loop through every x coordinate
    for (int x = 0; x <= width; x++) {
      
      // calculate new y-coordinate for each x coordinate
      // this is not correct at the moment
      float yCoordinate = height/2 - penSize;
      
      // draw to screen
      ellipse(x, yCoordinate, penSize, penSize);  
    }
    
  }

  
}