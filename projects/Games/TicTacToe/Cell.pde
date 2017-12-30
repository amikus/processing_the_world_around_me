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
  
  // toggle the Cell's state if the mouse is within the cell's boundaries
  boolean click(int mouseX, int mouseY, int activePlayer) {
    
    if (mouseX >= x && mouseX <= x+w &&
        mouseY >= y && mouseY <= y+h) {
          
          if (state == 0) {
            if (activePlayer == 1) {
              state = 1;
              return true;
            }
            
            if (activePlayer == 2) {
              state = 2;
              return true;
            }
          }
        }
        
     // if nothing changed, let the client know
     return false;
    
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
        line(x+w*.25, y+h*.25, x+w*.75, y+h*.75);
        line(x+w*.75, y+h*.25, x+w*.25, y+h*.75);
        break;
    }
      
  }
}