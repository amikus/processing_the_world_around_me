/*
Ants perform a random walk on the screen.

When they find food, they grab a piece and return to their home with it, where the food is destroyed.
While they are holding food in their hands, they leave a dissipating trail behind them, which other ants will follow to the food source.
*/

/********************
* Variables         *
********************/
Point homeLocation;
Home home;

/********************
* Setup             *
********************/
void setup() {
  
  background(0);
  size(500, 500);
  
  homeLocation = new Point(0, 480);
  home = new Home(homeLocation, 255, 20);
}

/********************
* Draw              *
********************/
void draw() {
 
  background(0);
  home.display();
  
}