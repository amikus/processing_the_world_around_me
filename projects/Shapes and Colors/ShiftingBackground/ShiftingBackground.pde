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
  // update the background color
  background(r, g, b);
  
  // divide screen into 4 quadrants
  bisectScreen();
  
  // update the color values
  updateRedness();
  updateGreenness();
  updateBlueness();
    
}

// Bisect screen on both axes
void bisectScreen() {
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}

// Update the redness of the background based on the mouse's position. 
// Increase redness when mouse is on the right half of screen and decrease on the left half.
void updateRedness() {
  if (mouseX > width/2) {
    r += 1; 
  } else if (mouseX < width/2) {
    r -= 1;
  }
  
  // constrain r to valid range
  r = constrain(r, 0, 255);
}

// Update the greenness of the background based on whether or not the left mouse button is held down 
// Increase greenness when the mouse button is depressed and decrease when the mouse button is released.
void updateGreenness() { 
  // alter bgreenness of background based on whether or not mouse is clicked
  // increment when mouse button depressed, decrement when released
  if (mousePressed) {
    g += 1;
  } else {
    g -= 1;
  }
  
  // constrain g to valid range
  g = constrain(g, 0, 255);
}

// Update the blueness of the background based on the mouse's position. 
// Increase blueness when mouse is on the bottom half of screen and decrease on the top half.
void updateBlueness() {
  if (mouseY > height/2) {
    b += 1; 
  } else if (mouseY < width/2) {
    b -= 1;
  }
  
  // constrain b to valid range
  b = constrain(b, 0, 255);  
}