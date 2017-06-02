/*
Draws circles at random positions of random colors and sizes
*/

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
  
  // get random diameter and coordinates
  diam = random(20);
  x = random(width);
  y = random(height);
  
  // draw circle and pass in a randomly generated color
  drawCircle(generateRandomColor());
}

// Generate color with random r, g, b, and a values
color generateRandomColor() {
  return color(random(255), random(255), random(255), random(255));
}

// Draw circle of specified color
void drawCircle(color Color) {

  fill(Color);
  ellipse(x, y, diam, diam);
}