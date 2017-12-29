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
    
    // define pen characteristics
    stroke(0);
    noFill();
    
    // draw the cell
    rect(x, y, w, h);
    
    // draw X or O
    switch(state) {
      // draw an O
      case 1:
        ellipse(x+(w*.5), y+(h*.5), w*.5, h*.5);
        break;
      // draw an X
      case 2:
        line(x, y, x+w, y+h);
        line(x+w, y, x, y+h);
        break;
    }
      
  }
}