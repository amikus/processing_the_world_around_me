void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  
  // set CENTER and stroke mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  
  // Draw Boog's wings
  // left wing
  fill(50);
  triangle(mouseX-30, mouseY-10, mouseX, mouseY-10, mouseX, mouseY+30);
  triangle(mouseX-10, mouseY, mouseX-40, mouseY+30, mouseX, mouseY+30);
  fill(90);
  triangle(mouseX-10, mouseY, mouseX-30, mouseY+20, mouseX-10, mouseY+20);
  fill(125);
  triangle(mouseX-10, mouseY, mouseX-20, mouseY+10, mouseX-10, mouseY+10);
  // right wing
  fill(50);
  triangle(mouseX+30, mouseY-10, mouseX, mouseY-10, mouseX, mouseY+30);
  triangle(mouseX+10, mouseY, mouseX+40, mouseY+30, mouseX, mouseY+30);
  fill(90);
  triangle(mouseX+10, mouseY, mouseX+30, mouseY+20, mouseX+10, mouseY+20);
  fill(125);
  triangle(mouseX+10, mouseY, mouseX+20, mouseY+10, mouseX+10, mouseY+10);
  
  // Draw Boog's body
  fill(150);
  rect(mouseX, mouseY, 20, 100);
  
  // Draw Boog's head
  fill(255);
  ellipse(mouseX, mouseY-30, 60, 60);
  line(mouseX-30, mouseY-60, mouseX-20, mouseY-70);
  line(mouseX-20, mouseY-70, mouseX-10, mouseY-60);  
  ellipse(mouseX-30, mouseY-60, 5, 5);
  line(mouseX+30, mouseY-60, mouseX+20, mouseY-70);
  line(mouseX+20, mouseY-70, mouseX+10, mouseY-60);  
  ellipse(mouseX+30, mouseY-60, 5, 5);
  
  // Draw Boog's eyes
  fill(0);
  ellipse(mouseX-19, mouseY-30, 16, 32);
  ellipse(mouseX+19, mouseY-30, 16, 32);
  
  // Draw Boog's arms/legs
  fill(255);
  // top
  line(mouseX-10, mouseY+5, mouseX-15, mouseY+15);
  line(mouseX-15, mouseY+15, mouseX-5, mouseY+20);
  ellipse(mouseX-5, mouseY+20, 5, 5);
  line(mouseX+10, mouseY+5, mouseX+15, mouseY+15);
  line(mouseX+15, mouseY+15, mouseX+5, mouseY+20);
  ellipse(mouseX+5, mouseY+20, 5, 5);
  // middle
  line(mouseX-10, mouseY+25, mouseX-20, mouseY+35);
  ellipse(mouseX-20, mouseY+35, 5, 5);
  line(mouseX+10, mouseY+25, mouseX+20, mouseY+35);
  ellipse(mouseX+20, mouseY+35, 5, 5);
  // bottom
  line(mouseX-10, mouseY+50, mouseX-20, mouseY+60);
  ellipse(mouseX-20, mouseY+60, 5, 5);
  line(mouseX+10, mouseY+50, mouseX+20, mouseY+60);
  ellipse(mouseX+20, mouseY+60, 5, 5);
  
}

void mousePressed() {
  
}

void keyPressed() {
  
}