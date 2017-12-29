/*
A simple client for a Tic Tac Toe game
*/

Cell[][] board;

int cols = 3;
int rows = 3;

void setup() {
  // stub
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        board[i][j].display();
      }
  }
}

void mousePressed() {
  
}

// A Cell object
class Cell {
  float x, y;
  float w, h;
  int state;    // can be "O" or nothing
  
  // Cell constructor
  Cell(float tempX, float tempY, float tempW, float tempH) {
    
    // stub
  }
  
  void click(int mx, int my) {
    // stub
  }
  
  void display() {
    // stub
  }
}