/*
A series of columns or rows is drawn on the screen, with the darkest
values drawn nearest to the mouse, creating the illusion of depth
near the mouse cursor. Whether the chasm is drawn horizontally or
vertically changes each time the mouse is clicked.
*/
  
// for determining whether columns or rows should be drawn
String columnsOrRows = "columns";

// for holding the distance between each row or column
int columnSize = 10;
int rowSize = 10;

void setup() {
  size(500, 500);
  background(0);
  noStroke();
}

void draw() {
  background(0);
  
  
  if (columnsOrRows == "columns") {
    
    // begin drawing at the left side of the screen
    int columnPosition = 0;
    
    while (columnPosition < width) {
      
      // determine how far the mouse is from the column that's being drawn
      float distance = abs(mouseX-columnPosition);
      // the further the column is from mouseX, the lighter it should be drawn
      fill(distance);
      // draw the column
      rect(columnPosition, 0, columnSize, height);
      
      // move to the next column position
      columnPosition += columnSize;
    }
    
  } else if (columnsOrRows == "rows") {
    
    // begin drawing at the top of the screen
    int rowPosition = 0;
    
    while (rowPosition < height) {
      
      // determine how far the mouse is from the row that's being drawn
      float distance = abs(mouseY-rowPosition);
      // the further the row is from mouseY, the lighter it should be drawn
      fill(distance);
      //  draw the row
      rect(0, rowPosition, width, rowSize);
      
      // move to the next row position
      rowPosition += rowSize;
    }
  }
  
  
}

void mousePressed() {
  // when the mouse is clicked, switch between vertical and horizontal chasm
  if (columnsOrRows == "columns") {
    columnsOrRows = "rows";
  } else {
    columnsOrRows = "columns";
  }
}