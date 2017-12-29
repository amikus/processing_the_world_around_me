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
  
  // display the game board
  for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        board[i][j].display();
      }
  }
}

void mousePressed() {
  
}