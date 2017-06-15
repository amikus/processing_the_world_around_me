/********************
* Body Class        *
********************/

class Body {

  /**************
  * Variables   *
  **************/
  
  // Colors
  color black = #160f29;
  color yellow = #f7c331;
  color orange = #f7882f;
  color red = #bf221e;
  color green = #0dab76;
  
  // To be calculated later
  float halfBodyWidth;
  float halfBodyHeight;
  
  // Provided in the beginning, may want to pass in
  float bodyWidth = 20;
  float bodyHeight = 100;

  // Other body parts needed to draw leg
  Head head;
  Wing wing;
  Leg leg;
  
  /**************
  * Constructor *
  ***************/
  Body() {
    
    calculateBodyValues();

    wing = new Wing();
    head = new Head();
    leg = new Leg(bodyWidth, bodyHeight);
    
  }
  
  /**************
  * Methods     *
  ***************/
  // Display body
  void display() {
    
    wing.display();
    
    strokeWeight(2);
    fill(green);
    rect(-halfBodyWidth, -halfBodyHeight, bodyWidth, bodyHeight);
    
    head.display();
    leg.display();
  }
  
  // Calculate derived body values based on provided values
  void calculateBodyValues() {
    halfBodyWidth = bodyWidth / 2;
    halfBodyHeight = bodyHeight / 2;
  }
}