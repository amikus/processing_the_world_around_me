/*
Objects change color when the mouse moves over them.
*/

// For holding rectangle qualities
float rectX, rectY, rectHeight, rectWidth, rectHalfHeight, rectHalfWidth;
// For holding circle qualities
float ellipseX, ellipseY, diameter, radius, radiusSquared;

// Colors
color blue = color(0, 150, 240, 255);
color green = color(0, 200, 0, 255);
color pink = color(200, 0, 100, 255);

void setup() {
  // basic window conditions
  size(500, 500);
  frameRate(60);
  
  // pen
  stroke(0);
  
  // drawing modes for shapes 
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  // initialize variables for shapes
  initializeRectangle();
  initializeCircle();
}

void draw() {
  background(0);
  
  // if mouse is inside the boundaries, set fill to green
  // otherwise, set fill to blue
  if (mouseX >= rectX-rectHalfWidth && mouseX <= rectX+rectHalfWidth &&
      mouseY >= rectY-rectHalfHeight && mouseY <= rectY+rectHalfHeight) {
        fill(green);        
      } else {
        fill(blue);
      }
  
  rect(rectX, rectY, rectWidth, rectHeight);

  // if mouse is inside the boundaries, set fill to blue
  // otherwise, set fill to green
  if (mouseX >= ellipseX-sqrt(radiusSquared) && mouseX <= ellipseX+sqrt(radiusSquared) &&
      mouseY >= ellipseY-sqrt(radiusSquared) && mouseY <= ellipseY+sqrt(radiusSquared)) {
        fill(green);
      } else {
        fill (pink);
      }
  
  ellipse(ellipseX, ellipseY, diameter, diameter);
}

// initialize rectangle qualities
void initializeRectangle() {
  rectX = width/7 * 2;
  rectY = height/2 - width/20;
  rectHeight = 150;
  rectWidth = 150;
  // half values used to determine where edges of rectangle lie
  rectHalfHeight = rectHeight/2;
  rectHalfWidth = rectWidth/2;
}

void initializeCircle() {
  // initialize circle qualities;
  ellipseX = width - (width/7 * 2);
  ellipseY = height/2 - width/20;
  diameter = 150;
  radius = diameter/2;
  radiusSquared = sq(radius); 
}