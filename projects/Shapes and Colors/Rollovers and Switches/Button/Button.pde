/*
A button that can be activated or deactivated by clicking on it
*/

// for holding rectangle qualities
float rectX, rectY, rectHeight, rectWidth, rectHalfHeight, rectHalfWidth;

// for holding button state
boolean buttonIsClicked = false;

void setup() {
  // basic window conditions
  size(500, 500);
  frameRate(60);
  
  // drawing modes for shapes 
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  // initialize rectangle qualities
  rectX = width/2;
  rectY = height/2 - height/20;
  rectHeight = 150;
  rectWidth = 150;
  // half values used to determine where edges of rectangle lie
  rectHalfHeight = rectHeight/2;
  rectHalfWidth = rectWidth/2;
  
}

void draw() {
  background(0);
  
  // By default, the button is blue.
  // When clicked, it turns green.
  if (buttonIsClicked) {
    stroke(40, 40, 40, 255);
    fill(0, 200, 0, 255);
  } else {
    stroke(200, 200, 200, 255);
    fill(0, 150, 240, 255);
  }
  
  rect(rectX, rectY, rectWidth, rectHeight);

}

void mousePressed() {
  
  // if user clicks within boundaries of button, toggle its on/off status
  if (mouseX >= rectX-rectHalfWidth && mouseX <= rectX+rectHalfWidth &&
      mouseY >= rectY-rectHalfHeight && mouseY <= rectY+rectHalfHeight) {
        buttonIsClicked = !buttonIsClicked;
  }
}