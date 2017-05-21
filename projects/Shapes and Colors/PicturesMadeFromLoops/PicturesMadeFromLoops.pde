/*
A series of images all generated using simple loops.
*/

// for keeping track of which image to display
int imageNumber = 0;

// center of window
float center;
      
void setup() {
  size(500, 500);
  stroke(0);
  center = width/2;
}

void draw() {
  background(255);
  println(imageNumber);
  
  // draw a different picture each time the mouse is clicked
  switch(imageNumber) {
    
    // a series of horizontal lines
    case 0:
    
      float lineSpacing = 25;
      
      for (int yCoordinate = 0; yCoordinate < height; yCoordinate += lineSpacing) {
        line(0, yCoordinate, width, yCoordinate);
      }
      
      break;
      
    // a series of concentric, shaded circles
    case 1:

      float shade;
      
      for (int diameter = width; diameter > 0; diameter -= 50) {
        shade = diameter/2 - 25;       
        fill(shade);
        ellipse(center, center, diameter, diameter);
      }
      
      break;
    
    // a series of concentric, unshaded ellipses
    case 2:
    S
      noFill();
      
      for (int i = 0; i < 10; i++) {
        ellipse(center, center, i*20, i*40); 
      }
    
      break;
    
    // a series of rectangles turned in two directions
    case 3:
    
      // draw each rectangle lower and wider than the previous rectangle
      for (float i = 1.0; i < width; i *= 1.1) {
        rect(0, i, i, i*2);  
      }
    
      break;
    
    // a series of evenly spaced squares
    case 4:
      
      float squareSpacing = 25;
      
      for (int i = 0; i < 10; i++) {
        rect(i*squareSpacing, height/2, squareSpacing/2, squareSpacing/2);
      }
      
      break;
    
    // a value scale made of evenly sized squares
    case 5:
      
      float valueSquareSpacing = 0;
      
      for (int fillShade = 255; fillShade > 0; fillShade -= 15) {
        
        fill(fillShade);
        rect(valueSquareSpacing, height/2, 25, 25);
        
        valueSquareSpacing += 25;
        
      }
    
      break;
  }
}

void mousePressed() {
  // loop through the images when the mouse button is clicked
  if (imageNumber == 5) {
    imageNumber = 0;
  } else {
    imageNumber++;
  }
}