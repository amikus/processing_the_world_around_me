// A Cell object
class Cell {
  float x, y;   // cell position
  float w, h;   // cell dimensions
  int state;    // can be "O" or nothing
  
  // Cell constructor
  Cell(float tempX, float tempY, float tempW, float tempH) {
    
    this.x = tempX;
    this.y = tempY;
    this.w = tempW;
    this.h = tempH;
    
    this.state = 0;
    
  }
  
  void click(int mx, int my) {
    // stub
  }
  
  void display() {
    // stub
  }
}