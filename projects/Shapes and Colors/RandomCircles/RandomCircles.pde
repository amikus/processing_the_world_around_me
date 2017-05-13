/*
Draws circles at random positions of random colors and sizes
*/

// will hold circle's rgb color and alpha channel values
float r, g, b, a;
// will hold circle's diameter and x,y coordinates
float diam, x, y;

void setup() {
  // initialize basic window conditions
  size(500, 500);
  frameRate(60);
  noCursor();
  noStroke();
  
  // background will  be drawn one time
  background(255);
}

void draw() {
  // get random color and alpha
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  
  // get random diameter and coordinates
  diam = random(20);
  x = random(width);
  y = random(height);
  
  fill(r, g, b, a);
  ellipse(x, y, diam, diam);
}