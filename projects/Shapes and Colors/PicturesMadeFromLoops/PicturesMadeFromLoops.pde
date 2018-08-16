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
        
    case 0:
      // a series of horizontal lines
      drawHorizontalLines();
      break;
      
    case 1:
      // a series of concentric, shaded circles
      drawConcentricCircles();
      break;
    
    case 2:
      // a series of concentric, unshaded ellipses
      drawConcentricEllipses();
      break;
    
    case 3:
      // a series of rectangles turned in two directions    
      drawRotatedRectangles();
      break;
    
    case 4:
      // a series of evenly spaced squares  
      drawEvenlySpacedSquares();
      break;
    
    case 5:
      // a value scale made of evenly sized squares
      drawValueScale();
      break;
      
    case 6:
      // a series of morphing rectangles that utiize vertices and beginShape/endShape
      drawMorphingRectangles();
      break;
  }
}

void mousePressed() {
  // loop through the images when the mouse button is clicked
  if (imageNumber == 6) {
    imageNumber = 0;
  } else {
    imageNumber++;
  }
}

// draw a series of evenly spaced, horizontal lines
void drawHorizontalLines() {
  
  float lineSpacing = 25;
  
  for (int yCoordinate = 0; yCoordinate < height; yCoordinate += lineSpacing) {
    line(0, yCoordinate, width, yCoordinate);
  }
  
}

// draw a series of shaded concentric circles
void drawConcentricCircles() {
 
  float shade;
  
  for (int diameter = width; diameter > 0; diameter -= 50) {
    shade = diameter/2 - 25;       
    fill(shade);
    ellipse(center, center, diameter, diameter);
  }
  
}

// draw a series of concentric, unshaded ellipses
void drawConcentricEllipses() {
  
  noFill();
      
  for (int i = 0; i < 10; i++) {
    ellipse(center, center, i*20, i*40); 
  }
  
}

// draw a series of rectangles turned in two directions
void drawRotatedRectangles() {
  
  // draw each rectangle lower and wider than the previous rectangle
  for (float i = 1.0; i < width; i *= 1.1) {
    rect(0, i, i, i*2);  
  } 
  
}

// draw a series of evenly spaced squares
void drawEvenlySpacedSquares() {
  
  float squareSpacing = 25;
      
  for (int i = 0; i < 10; i++) {
    rect(i*squareSpacing, height/2, squareSpacing/2, squareSpacing/2);
  }
  
}

// a value scale made of evenly sized and spaced squares
void drawValueScale() {
  float valueSquareSpacing = 0;
      
  for (int fillShade = 255; fillShade > 0; fillShade -= 15) {
    fill(fillShade);
    
    rect(valueSquareSpacing, height/2, 25, 25);

    valueSquareSpacing += 25;  
  }
  
}

// draw a series of rectangles that gradually morph into trapezoids
// this is the only drawing to make use of beginShape() and vertices
void drawMorphingRectangles() {
  
  fill(175);
  
  for (int i=0; i<10; i++) {
  
    float offsetFromLeftEdge = i * (width * 0.1);
    float rectangleWidth = width * .075;
    float offsetFromTop = height * .05;
    float offsetFromBottom = height - (height * .1);
    
    beginShape();
      vertex(offsetFromLeftEdge, offsetFromTop-i);
      vertex(offsetFromLeftEdge + rectangleWidth, offsetFromTop+i);
      vertex(offsetFromLeftEdge + rectangleWidth, offsetFromBottom-i);
      vertex(offsetFromLeftEdge, offsetFromBottom+i);
    endShape(CLOSE);
    
  }
  
  
}