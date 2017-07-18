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
    for (int x = 0; x <= width; x++) {
      
      // calculate new y-coordinate for each x coordinate
      float yCoordinate = height/2;
      
      // draw to screen
      ellipse(x, yCoordinate, penSize, penSize);  
    }
    
  }
  
  // draw a line with randomly generated y coordinates
  void displayRandom() {
    
    // loop through every x coordinate
    for (int x = 0; x <= width; x++) {
      
      // calculate new y-coordinate for each x coordinate
      float yCoordinate = random(0, height);
      
      // draw to screen
      ellipse(x, yCoordinate, penSize, penSize);  
    }
    
  }
  
  // draw a line with y coordinates generated using Perlin noise algorithm
  void displayPerlin() {
    
    // loop through every x coordinate
    for (int x = 0; x <= width; x++) {
      
      // get new Perlin noise value for each x
      // multiplying x * .01 serves same purpose as incrementing .01 in a separate variable on each loop
      float noiseValue = noise(x * .01);
      
      // calculate new y-coordinate for each x coordinate
      // noiseValue will always be between 0 and 1, so necessary to multiply it by range of possible y values
      float yCoordinate = noiseValue * height;
      
      // draw to screen
      ellipse(x, yCoordinate, penSize, penSize);  
    }
    
  }

  
}