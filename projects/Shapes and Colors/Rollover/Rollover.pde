/*
Object changes color when the mouse moves over it.
*/

// For holding rectangle qualities
float x, y, h, w, hHalf, wHalf;

void setup() {
  // set up basic window conditions
  size(500, 500);
  frameRate(60);
  
  // set up initial drawing
  stroke(0);
  rectMode(CENTER);
  
  // initialize rectangle qualities
  x = width/4;
  y = height/2;
  h = 150;
  w = 150;
  hHalf = h/2;
  wHalf = w/2;
}

void draw() {
  background(0);
  
  if (mouseX >= x-wHalf && mouseX <= x+wHalf &&
      mouseY >= y-hHalf && mouseY <= y+wHalf) {
        fill(125, 200, 0, 255);        
      } else {
        fill(0, 150, 240, 255);
      }
  println(x);        
  rect(x, y, w, h);
}