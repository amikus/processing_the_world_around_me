/*
A simple client for a Tic Tac Toe game
*/

Cell[][] board;

int cols = 3;
int rows = 3;

int activePlayer = 1;

boolean pieceWasPlayed = false;  // set to true when a piece is successfully played

void setup() {
  
  size(300, 300);
  
  float xPosition = 0;
  float yPosition = 0;
  float cellWidth = 100;
  float cellHeight = 100;
  
  board = new Cell[cols][rows];
  
  // populate the board with cells
  for (int i = 0; i < cols; i++) {
 
      for (int j = 0; j < rows; j++) {
        
        // instantiate each cell in the array
        board[i][j] = new Cell(xPosition, yPosition, cellWidth, cellHeight);
        
        // move over one column
        xPosition += cellWidth;
        
      }
      
      // move down one row and reset xPosition
      yPosition += cellHeight;   
      xPosition = 0;
  }
}

void draw() {
  
  println(activePlayer);
  background(255);
  
  // display the game board
  for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        board[i][j].display();
      }
  }
}

void mousePressed() {
  
  // check each cell to see if the mouse falls within its boundaries
  for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        
        // determine whether or not a piece was successfully played
        pieceWasPlayed = board[i][j].click(mouseX, mouseY, activePlayer);
        
        // if a piece was played, toggle which player is active
        if (pieceWasPlayed) {
          activePlayer = (activePlayer == 1) ? 2 : 1;
        }
        
      }
  }
  

}