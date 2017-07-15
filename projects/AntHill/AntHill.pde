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
  
  // create home
  homeSize = width * .16;
  homeLocation = getHomeLocation(homeSize);
  home = spawnHome(homeSize, homeLocation);
  
  // create food
  foodSize = width * .16;
  foodLocation = getFoodLocation(foodSize);
  food = spawnFood(foodSize, foodLocation);
  
  // create ants
  int numberOfAnts = 15;            // number of ants to spawn
  float antSize = width * .05;      // diameter of each ant
  arrayOfAnts = spawnAnts(numberOfAnts, antSize);
  
}

/********************
* Draw              *
********************/
void draw() {
 
  background(darkGray);
  home.display();
  food.display();
  
  // loop through the array of ants
  for (int i = 0; i < arrayOfAnts.length; i++) {
    
    Ant currentAnt = arrayOfAnts[i];
    
    // display the ant
    currentAnt.display();
    
    // if the ant is carrying food and knows where home is, have it return home
    if (currentAnt.isCarryingFood && currentAnt.knowsHomeLocation) {
      currentAnt.walkToLocation(homeLocation);
      currentAnt.dropPheremone();
    }
    // if the ant is not carry food and knows where food is, have it return to food
    else if (!currentAnt.isCarryingFood && currentAnt.knowsFoodLocation) {
      currentAnt.walkToLocation(foodLocation);
    }
    // otherwise, keep hunting for food
    else {
      currentAnt.huntForFood();
    }
    
    // if the ant is at home and is carrying food, have it drop the food
    if (currentAnt.intersectsWithHome(home) && currentAnt.isCarryingFood) {
      currentAnt.isCarryingFood = false;
    }
    
    // if the ant is at the food source and isn't carrying any food
    if (currentAnt.intersectsWithFood(food) && !currentAnt.isCarryingFood) {
      
      // If the ant doesn't know where the food is yet, give it that knowledge
      if (!currentAnt.knowsFoodLocation) {
        currentAnt.knowsFoodLocation = true;
      }
      
      // If the ant knows where the food is, but it's all gone, take away that knowledge
      if (currentAnt.knowsFoodLocation && food.diameter <= 0) {
        currentAnt.knowsFoodLocation = false;
      }
      // Otherwise, the ant will pick up a piece of food, reducing the food source's size
      else {
        currentAnt.isCarryingFood = true;
        food.reduceSize();
      }
      
    }
    
    // if the ant is carrying food, display that food and drop pheremone
    if (currentAnt.isCarryingFood) {
      Food morsel = spawnFood(currentAnt.diameter * .5, currentAnt.location);
      morsel.display();
    }
 
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

// generate home location
Home spawnHome(float homeSize, Point homeLocation) {
  return new Home(homeLocation, blue, homeSize);
}
  
// generate food location
Food spawnFood(float foodSize, Point foodLocation) {
  return new Food(foodLocation, pink, foodSize);
}

// generate an array full of ants
Ant[] spawnAnts(int numberOfAnts, float antSize) {

  Ant[] antArray = new Ant[numberOfAnts];

  // initialize array of Ants
  for (int i = 0; i < antArray.length; i++) {
    Point antLocation = new Point(homeLocation.xCoordinate, homeLocation.yCoordinate);
    antArray[i] = new Ant(antLocation, lightGray, antSize, yellow);
  }
  
  return antArray;
}