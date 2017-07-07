/*
Ants perform a random walk on the screen.

When they find food, they grab a piece and return to their home with it, where the food is destroyed.
While they are holding food in their hands, they leave a dissipating trail behind them, which other ants will follow to the food source.
*/

/********************
* Variables         *
********************/
// home and food
Point homeLocation;
Point foodLocation;
Home home;
Food food;
float homeSize;
float foodSize;
float homeOffset;
float foodOffset;

// colors
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

  // establish sizes for home and food
  homeSize = width * .16;
  foodSize = width * .16;  
  homeOffset = height / 50;
  foodOffset = height / 50;
  
  // establish locations for home and food
  homeLocation = new Point(0 + homeOffset, height - homeSize - homeOffset);
  foodLocation = new Point(width - foodSize - foodOffset, 0 + foodOffset);
  
  // spawn home and food
  home = new Home(homeLocation, blue, homeSize);
  food = new Food(foodLocation, pink, foodSize);
}

/********************
* Draw              *
********************/
void draw() {
 
  background(darkGray);
  home.display();
  food.display();
  
}