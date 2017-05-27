/*
A grid of evenly sized and randomly colored squares.
*/
  
int squareSize = 25;    // height and width of square
boolean move = false;   // when true, reselect colors each frame and redraw

void setup() {
  size(500, 500);
  frameRate(60);
  background(0);
  noStroke();
  
  // Begin at top left corner of screen and move across columns
  // of width squareSize until width of screen is reached,
  // then move down to next row. Repeat for each row until 
  // screen height is reached.
  for (int down = 0; down < height; down += squareSize) {
    for (int across = 0; across < width; across += squareSize) {
  
      // select random rgb color and draw square of that color
      fill(random(255), random(255), random(255));
      rect(across, down, squareSize, squareSize);
    
    }      
  }
}


void draw() {
  
  // only do this if mouse has been clicked odd number of times
  if (move) {
    
    // Begin at top left corner of screen and move across columns
    // of width squareSize until width of screen is reached,
    // then move down to next row. Repeat for each row until 
    // screen height is reached.
    for (int down = 0; down < height; down += squareSize) {
      for (int across = 0; across < width; across += squareSize) {
    
        // select random rgb color and draw square of that color
        fill(random(255), random(255), random(255));
        rect(across, down, squareSize, squareSize);
      
      }      
    }    
  }
  
}

void mousePressed() {
  
  // toggle whether grid should move or remain stationary
  move = !move;
   
}