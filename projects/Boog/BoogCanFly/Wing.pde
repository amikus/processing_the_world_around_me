/********************
* Wing Class        *
********************/

class Wing {

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
  float halfUpperWingSpan;
  float quarterOfUpperWingHeight;
  float distanceToTopOfUpperWing;
  float distanceToBottomOfUpperWing;
  float halfLowerWingSpan;
  float eighthOfLowerWingSpan;
  float quarterOfLowerWingHeight;
  float distanceToTopOfLowerWing;
  float distanceToBottomOfLowerWing;
  float distanceToBottomOfLowerWingMid;
  float distanceToBottomOfLowerWingSmall;
  float halfLowerWingSpanMid;
  float halfLowerWingSpanSmall;
  
  // Provided in the beginning, may want to pass in
  float upperWingSpan = 60;
  float upperWingHeight = 40;
  float lowerWingSpan = 80;
  float lowerWingHeight = 40;  
  
  /**************
  * Constructor *
  ***************/
  Wing() {
  
    calculateWingValues();
    
  }
  
  /**************
  * Methods     *
  ***************/

  // Display wings
  void display() {

    // left wing
    fill(yellow);
    triangle(-halfUpperWingSpan, -distanceToTopOfUpperWing, 0, -distanceToTopOfUpperWing, 0, distanceToBottomOfUpperWing);
    triangle(-halfLowerWingSpan, distanceToBottomOfLowerWing, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWing);
    fill(orange);
    triangle(-halfLowerWingSpanMid, distanceToBottomOfLowerWingMid, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingMid);
    fill(red);
    triangle(-halfLowerWingSpanSmall, distanceToBottomOfLowerWingSmall, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingSmall);
    
    // right wing
    fill(yellow);
    triangle(halfUpperWingSpan, -distanceToTopOfUpperWing, 0, -distanceToTopOfUpperWing, 0, distanceToBottomOfUpperWing);
    triangle(halfLowerWingSpan, distanceToBottomOfLowerWing, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWing);
    fill(orange);
    triangle(halfLowerWingSpanMid, distanceToBottomOfLowerWingMid, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingMid);
    fill(red);
    triangle(halfLowerWingSpanSmall, distanceToBottomOfLowerWingSmall, 0, -distanceToTopOfLowerWing, 0, distanceToBottomOfLowerWingSmall);
    
  }
  
  // Calculate derived wing values based on provided values
  void calculateWingValues() {
    halfUpperWingSpan = upperWingSpan / 2;
    quarterOfUpperWingHeight = upperWingHeight / 4;
    distanceToTopOfUpperWing = quarterOfUpperWingHeight;
    distanceToBottomOfUpperWing = 3 * quarterOfUpperWingHeight;
    halfLowerWingSpan = lowerWingSpan / 2;
    eighthOfLowerWingSpan = lowerWingSpan / 8;
    quarterOfLowerWingHeight = lowerWingHeight / 4;
    distanceToTopOfLowerWing = quarterOfLowerWingHeight;
    distanceToBottomOfLowerWing = 3 * quarterOfLowerWingHeight;
    distanceToBottomOfLowerWingMid = 2 * quarterOfLowerWingHeight;
    distanceToBottomOfLowerWingSmall = quarterOfLowerWingHeight;
    halfLowerWingSpanMid = eighthOfLowerWingSpan * 3;
    halfLowerWingSpanSmall = eighthOfLowerWingSpan * 2;
  }
}