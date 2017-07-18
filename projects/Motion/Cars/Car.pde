/********************
* Car Class         *
********************/
class Car {

  /**************
  * Variables   *
  **************/
  color carColor;
  float xPosition;
  float yPosition;
  float lengthOfCar;
  float widthOfCar;
  float wheelOffset;
  float horizontalSpeed;
  
  /**************
  * Constructor *
  ***************/  
  Car(color carColor, float xPosition, float yPosition, float length, float speed) {
    this.carColor = carColor;
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    this.lengthOfCar = length;
    this.widthOfCar = length/2;
    this.wheelOffset = length/4; 
    this.horizontalSpeed = speed;
    
  }

  
  /**************
  * Methods     *
  ***************/
  void display() {
    
    // set up drawing styles
    rectMode(CENTER);
    stroke(0);
    strokeWeight(2);

    // body of car
    strokeWeight(2);
    fill(carColor);
    rect(xPosition, yPosition, lengthOfCar, lengthOfCar/2);
  
    // wheels of car
    strokeWeight(1);
    fill(darkGray);
    rect(xPosition - wheelOffset, yPosition - wheelOffset, wheelOffset, wheelOffset/2);
    rect(xPosition + wheelOffset, yPosition - wheelOffset, wheelOffset, wheelOffset/2);
    rect(xPosition - wheelOffset, yPosition + wheelOffset, wheelOffset, wheelOffset/2);
    rect(xPosition + wheelOffset, yPosition + wheelOffset, wheelOffset, wheelOffset/2);
    
  }
  
  void drive() {
    
    // update position based on speed
    xPosition = xPosition + horizontalSpeed;
    
    // wrap around screen
    if (xPosition > width + (lengthOfCar/2)) {
      xPosition = 0 - (lengthOfCar/2);
    }
    
  }
  
}