/*
Objects change color when the mouse moves over them.
*/

// For holding rectangle qualities
float rectX, rectY, rectHeight, rectWidth, rectHalfHeight, rectHalfWidth;
// For holding circle qualities
float ellipseX, ellipseY, diameter, radius, radiusSquared;

void setup() {
  // basic window conditions
  size(500, 500);
  frameRate(60);
  
  // pen
  stroke(0);
  
  // drawing modes for shapes 
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  // initialize rectangle qualities
  rectX = width/7 * 2;
  rectY = height/2 - width/20;
  rectHeight = 150;
  rectWidth = 150;
  // half values used to determine where edges of rectangle lie
  rectHalfHeight = rectHeight/2;
  rectHalfWidth = rectWidth/2;
  
  // initialize circle qualities;
  ellipseX = width - (width/7 * 2);
  ellipseY = height/2 - width/20;
  diameter = 150;
  radius = diameter/2;
  radiusSquared = sq(radius);
  
}

void draw() {
  background(0);
  
  // if mouse is inside the boundaries, set fill to blue
  // otherwise, set fill to green
  if (mouseX >= rectX-rectHalfWidth && mouseX <= rectX+rectHalfWidth &&
      mouseY >= rectY-rectHalfHeight && mouseY <= rectY+rectHalfHeight) {
        fill(0, 200, 0, 255);        
      } else {
        fill(0, 150, 240, 255);
      }
  
  rect(rectX, rectY, rectWidth, rectHeight);

  // if mouse is inside the boundaries, set fill to blue
  // otherwise, set fill to green
  if (mouseX >= ellipseX-sqrt(radiusSquared) && mouseX <= ellipseX+sqrt(radiusSquared) &&
      mouseY >= ellipseY-sqrt(radiusSquared) && mouseY <= ellipseY+sqrt(radiusSquared)) {
        fill(0, 200, 0, 255);
      } else {
        fill (200, 0, 100, 255);
      }
  
  ellipse(ellipseX, ellipseY, diameter, diameter);
}