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
  
  // Passed in from external sources
  float bodyXPosition;    // body's x position, used to accurately fire lasers from eyes
  float bodyYPosition;    // body's y position, used to accuratley fire lasers from eyes
  
  // Other body parts needed to draw head
  Antennae antennae;
  Eye eyes;
  
  /**************
  * Constructor *
  ***************/
  Head(float bodyXPosition, float bodyYPosition) {
    
    this.bodyXPosition = bodyXPosition;
    this.bodyYPosition = bodyYPosition;
    
    calculateHeadValues();
    
    antennae = new Antennae(headDiameter);
    eyes = new Eye(headDiameter, bodyXPosition, bodyYPosition);
    
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
  
  // update body position, as I'll need to pass this value to the eye to
  // allow lasers to fire accurately
  void updatePosition(float bodyXPosition, float bodyYPosition){
    
    this.bodyXPosition = bodyXPosition;
    this.bodyYPosition = bodyYPosition;
    
    eyes.updatePosition(bodyXPosition, bodyYPosition);
    
  }
  
}