/********************
* Head Class        *
********************/

class Head {

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
  float headRadius;
  
  // Provided in the beginning, may want to pass in
  float headDiameter = 60;
  
  // Other body parts needed to draw head
  Antennae antennae;
  Eye eyes;
  
  /**************
  * Constructor *
  ***************/
  Head() {
    
    calculateHeadValues();
    
    antennae = new Antennae(headDiameter);
    eyes = new Eye(headDiameter);
    
  }
  
  /**************
  * Methods     *
  ***************/
  // Display head
  void display() {
    strokeWeight(2);
    fill(green);
    ellipse(-headRadius, -headDiameter, headDiameter, headDiameter);
    
    antennae.display();
    eyes.display();
  }
  
  // Calculate derived head values based on provided values
  // Head
  void calculateHeadValues() {
    headRadius = headDiameter / 2;
  }
  
}