/*
Varies background color based on mouse position.
*/

// For holding r, g, b values
float r = 150;
float g = 150;
float b = 150;

void setup() {
  // intialize screen conditions
  size(500, 500);
  frameRate(60);
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
  if (mouseX > width/2) {
    r += 1; 
  } else if (mouseX < width/2) {
    r -= 1;
  }
  
  // alter blueness of background based on mouse position
  // increment on bottom half of screen, decrement on top half
  if (mouseY > height/2) {
    b += 1; 
  } else if (mouseY < width/2) {
    b -= 1;
  }
  
  // alter bgreenness of background based on whether or not mouse is clicked
  // increment when mouse button depressed, decrement when released
   if (mousePressed) {
     g += 1;
   } else {
     g -= 1;
   }
   
  // constrain rgb to range of 0-255
  r = constrain(r, 0, 255);
  g = constrain(g, 0, 255);
  b = constrain(b, 0, 255);
    
}