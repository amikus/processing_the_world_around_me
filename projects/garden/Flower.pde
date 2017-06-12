/********************
* Flower Class         *
********************/
class Flower {

  /**************
  * Variables   *
  **************/
  // colors used by all flowers
  color darkGray = #29434e;  // outlining
  color green = #64dd17;     // stem
  color yellow = #ffd600;    // center of flower
  color petalColor;          // passed
  
  // flower dimensions
  float flowerHeight;
  float stemWidth;
  float leafWidth;
  float halfLeafWidth;
  float leafHeight;
  float petalSize;
  float petalCenterSize;
  
  // column and row number, used for placing flowers
  int columnNumber;
  int rowNumber;
  
  // flower positions
  float xBaseOfStem;;
  float yBaseOfStem;
  float yTopOfStem;
  float xLeftLeafCenter;
  float yLeftLeafCenter;
  float xRightLeafCenter;
  float yRightLeafCenter;

  /**************
  * Constructor *
  ***************/
  Flower(float flowerHeight, color petalColor, int rowNumber, int columnNumber) {
  
    this.petalColor = petalColor;
    
    // flower dimensions
    this.flowerHeight = flowerHeight;
    this.stemWidth = flowerHeight/25;
    this.leafWidth = flowerHeight/5;
    this.halfLeafWidth = leafWidth/2;
    this.leafHeight = leafWidth/2;
    this.petalSize = flowerHeight/2;
    this.petalCenterSize = flowerHeight/5;
    
    // flower positions
    this.xBaseOfStem = columnSpacing * columnNumber;
      if (rowNumber == 1) xBaseOfStem += (width/10 - width/25);
      if (rowNumber == 2) xBaseOfStem -= (width/25);
      if (rowNumber == 3) xBaseOfStem -= (width/10);
    yBaseOfStem = horizonLine + (rowSpacing * rowNumber);
    yTopOfStem = yBaseOfStem - flowerHeight;
    xLeftLeafCenter = xBaseOfStem - halfLeafWidth;
    yLeftLeafCenter = yBaseOfStem - (flowerHeight * .3);
    xRightLeafCenter = xBaseOfStem + halfLeafWidth + stemWidth;
    yRightLeafCenter = yBaseOfStem - (flowerHeight * .4);
    
  }
  
  /**************
  * Methods     *
  ***************/
  
  void display() {
    stroke(darkGray);
  
    // green is used for stem and leaves
    fill(green);
    
    // stem
    strokeWeight(width/300);
    rect(xBaseOfStem, yTopOfStem, stemWidth, flowerHeight);
  
    // leaves
    strokeWeight(width/300);
    ellipse(xLeftLeafCenter, yLeftLeafCenter, leafWidth, leafHeight);  // left leaf
    ellipse(xRightLeafCenter, yRightLeafCenter, leafWidth, leafHeight);  // right leaf    
  
    // petals
    strokeWeight(width/250);
    fill(petalColor);
    ellipse(xBaseOfStem, yTopOfStem, petalSize, petalSize);
    
    // center
    strokeWeight(width/250);
    fill(yellow);
    ellipse(xBaseOfStem, yTopOfStem, petalCenterSize, petalCenterSize);

  }
  
}