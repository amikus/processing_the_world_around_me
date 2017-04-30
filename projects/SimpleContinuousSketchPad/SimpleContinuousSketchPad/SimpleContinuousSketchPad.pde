void setup() {
  // Set size and color of window
  size(800, 600);
  background(50);
}

void draw() {
  fill(150);
  stroke(255);
  line(pmouseX, pmouseY, mouseX, mouseY);
}