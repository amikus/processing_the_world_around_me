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

// ants
Ant[] arrayOfAnts;

// colors
color pink = #ff79b0;      // used for food
color blue = #6ec6ff;      // used for home
color yellow = #ffff52;    // pheremone trail
color darkGray = #29434e;  // background
color lightGray = #999999; // ants

/********************
* Setup             *
********************/
void setup() {
  
  background(darkGray);
  size(500, 500);
  frameRate(60);
  
  // establish sizes for home and food (currently relative to window size)
  homeSize = width * .16;
  foodSize = width * .16;
  
  // establish locations for home and food
  homeLocation = getHomeLocation(homeSize);
  foodLocation = getFoodLocation(foodSize);
  
  // spawn home and food
  home = new Home(homeLocation, blue, homeSize);
  food = new Food(foodLocation, pink, foodSize);
  
  // create ants
  int numberOfAnts = 15;            // number of ants to spawn
  float antSize = width * .05;      // diameter of each ant
  spawnAnts(numberOfAnts, antSize);
  
}

/********************
* Draw              *
********************/
void draw() {
 
  background(darkGray);
  home.display();
  food.display();
  
  for (int i = 0; i < arrayOfAnts.length; i++) {
    arrayOfAnts[i].huntForFoodRandomWalkWithTimers();
    arrayOfAnts[i].display();
  }

}

/********************
* Other Methods     *
********************/

// determine location of home based on size
// this is currently being calculated relative to window size
Point getHomeLocation(float homeSize) {
  
  // bottom left corner of screen
  float xPosition = homeSize;
  float yPosition = height - homeSize;
  
  return new Point(xPosition, yPosition);
}

// determine location of food based on size
// this is currently being calculated relative to window size
Point getFoodLocation(float foodSize) {
  
  // top right corner of screen
  float xPosition = width - foodSize;
  float yPosition = foodSize;
  
  return new Point(xPosition, yPosition);  
}

// generate an array full of ants
void spawnAnts(int numberOfAnts, float antSize) {

  arrayOfAnts = new Ant[numberOfAnts];

  // initialize array of Ants
  for (int i = 0; i < arrayOfAnts.length; i++) {
    Point antLocation = new Point(homeLocation.xCoordinate, homeLocation.yCoordinate);
    arrayOfAnts[i] = new Ant(antLocation, lightGray, antSize);
  }
}