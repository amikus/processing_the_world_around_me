/********************
* Antennae Class        *
********************/

class Antennae {

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
  float distanceToAntennaeTip;
  float distanceToAntennaeBend;
  float distanceToAntennaeTop;
  float antennaeBallRadius;
  float distanceToAntennaeBallEdgeLeft;
  float distanceToAntennaeBallEdgeRight;
  float distanceToAntennaeBallTop;
  
  // Provided in the beginning, may want to pass in
  float antennaeLength = 20;
  float antennaeHeight = 10;
  float distanceToAntennaeBase = 10;
  float antennaeBallDiameter = 6;  

  // Provided from external sources
  float headDiameter;
  
  /**************
  * Constructor *
  ***************/
  Antennae(float headDiameter) {
    
    this.headDiameter = headDiameter;
    
    calculateAntennaeValues();
    
  }
  
  /**************
  * Methods     *
  ***************/
  
  // Display antennae
  void display() {
    // antennae lines
    line(-distanceToAntennaeTip, -headDiameter, -distanceToAntennaeBend, -distanceToAntennaeTop);
    line(-distanceToAntennaeBend, -distanceToAntennaeTop, -distanceToAntennaeBase, -headDiameter);
    line(distanceToAntennaeTip, -headDiameter, distanceToAntennaeBend, -distanceToAntennaeTop);
    line(distanceToAntennaeBend, -distanceToAntennaeTop, distanceToAntennaeBase, -headDiameter);
    
    // antennae dots
    strokeWeight(1);
    fill(black);
    ellipse(-distanceToAntennaeBallEdgeLeft, -distanceToAntennaeBallTop, antennaeBallDiameter, antennaeBallDiameter);
    ellipse(distanceToAntennaeBallEdgeRight, -distanceToAntennaeBallTop, antennaeBallDiameter, antennaeBallDiameter);
  }
  
  // Calculate derived antennae values based on provided values
  void calculateAntennaeValues() {
    distanceToAntennaeTip = distanceToAntennaeBase + antennaeLength;
    distanceToAntennaeBend = distanceToAntennaeBase + (antennaeLength/2);
    distanceToAntennaeTop = headDiameter + antennaeHeight;
    antennaeBallRadius = antennaeBallDiameter/2;
    distanceToAntennaeBallEdgeLeft = distanceToAntennaeTip + antennaeBallRadius;
    distanceToAntennaeBallEdgeRight = distanceToAntennaeTip - antennaeBallRadius;
    distanceToAntennaeBallTop = headDiameter + antennaeBallRadius;
  }
  
  
}