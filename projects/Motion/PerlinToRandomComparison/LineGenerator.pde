class LineGenerator {
  
  /**************
  * Variables   *
  **************/      
  
  float penSize = height/100;
  
  /**************
  * Constructor *
  **************/
  LineGenerator() {    
    
    
    
  }
  
  /**************
  * Methods     *
  **************/
  
  // display line to screen
  void display() {
    
    // pen qualities
    fill(15);
    noStroke();
    
    // loop through every x coordinate
    for (int x = 0; x <= width; x++) {
      
      // calculate new y-coordinate for each x coordinate
      float yCoordinate = height/2 - penSize;
      
      // draw to screen
      ellipse(x, yCoordinate, penSize, penSize);  
    }
    
  }
  
}