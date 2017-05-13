/*
Varies background color based on mouse position.
*/

// For holding r, g, b values
float r = 150;
float g = 0;
float b = 150;

void setup() {
  // intialize screen conditions
  size(500, 500);
  frameRate(60);
  noCursor();
}

void draw() {
  // draw background
  background(r, g, b);
  
  // bisect screen on both axes
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  // alter redness of background based on mouse position
  // increment on right half of screen, decrement on left half
  if (mouseX > width/2 && r < 255) {
    r += 1; 
  } else if (mouseX < width/2 && r > 0) {
    r -= 1;
  }
  
  // alter blueness of background based on mouse position
  // increment on bottom half of screen, decrement on top half
  if (mouseY > height/2 && b < 255) {
    b += 1; 
  } else if (mouseY < width/2 && b > 0) {
    b -= 1;
  }
    
}