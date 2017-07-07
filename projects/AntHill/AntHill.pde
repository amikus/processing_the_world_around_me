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

color pink = #ff79b0;      // used for food
color blue = #6ec6ff;      // used for home
color yellow = #ffff52;    // pheremone trail
color darkGray = #29434e;  // background
color lightGray = #819ca9; // ants

/********************
* Setup             *
********************/
void setup() {
  
  background(darkGray);
  size(500, 500);
  
  homeLocation = new Point(0, 420);
  home = new Home(homeLocation, blue, 80);
}

/********************
* Draw              *
********************/
void draw() {
 
  background(darkGray);
  home.display();
  
}