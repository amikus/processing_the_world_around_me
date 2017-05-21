/*
A series of images all generated using simple loops.
*/

int imageNumber = 0;

void setup() {
  size(500, 500);
  stroke(0);
}

void draw() {
  background(255);
  println(imageNumber);
  
  // draw a different picture each time the mouse is clicked
  switch(imageNumber) {
    
    // a series of horizontal lines
    case 0:
    
      float spacing = 25;
      
      for (int yCoordinate = 0; yCoordinate < height; yCoordinate += spacing) {
        line(0, yCoordinate, width, yCoordinate);
      }
      
      break;
      
    // a series of concentric circles
    case 1:

      float center = width/2;
      float shade;
      
      for (int diameter = width; diameter > 0; diameter -= 50) {
        shade = diameter/2 - 25;       
        fill(shade);
        ellipse(center, center, diameter, diameter);
      }
      
      break;
      
    case 2:
    
      break;
      
    case 3:
      break;
      
    case 4:
      break;
      
    case 5:
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