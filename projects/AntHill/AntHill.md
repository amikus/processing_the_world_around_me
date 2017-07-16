This project was an independent project. No guidance was given by the author apart from "Develop an idea for a project that can be created with Processing using simple shape drawing and the fundamentals of programming." The goal of the project was to practice decomposing a complex goal into smaller components.

I've been interested in swarm behavior and in insect behavior for a while, and I love learning about AI, distributed learning systems, and I love the idea that ants--instead of holding information inside of their own bodies--store some information in pheremones that they release into their environment. I've never gotten around to actually writing a program to explore these ideas, though, and this project was a great opportunity to get started.

This sketch is intended to be a simulation of ant behavior, but I haven't studied ants extensively, so I'm only modeling a few aspects of their behavior. The ants (gray circles) spread out from a blue home, and they are hunting for a pink food source. When an ant finds the food source, it grabs a tiny piece of the food, and its back to its home, where it drops the morsel of food. If an ant is carrying food, it drops a pheremone that degrades over time. If another ant finds a pheremone, it learns the location of the food source, and it heads directly towards it. Over time, the food source diminishes in size until none remains, and the ants return to their original hunting behavior.

![A simulation of ant behavior](AntHill.gif)

The hunting algorithm that I used is a variation on the random walk. I didn't like the way that a pure random walk looked, though. The ants were too jittery. Instead, I programmed the ants to pick a random direction, then walk in that direction for a number of random seconds before choosing a new direction. This caused more realistic-looking behavior.

Some aspects I'd like to develop further and improve:

* I used the y=mx+b formula to determine the path my ants should take between home and food. I'd like to implement a better algorithm here.
* I'd like to add a "home" pheremone that the ants can drop while still hunting and close to home. I'll use this in conjunction with the "food" pheremone to create a gradient, which the ants will be able to use to orient themselves towards food or home, depending upon where they "want" to go.
* I want my ants to sense their environment better and learn more about the food and home locations based on the information they gather. Ideally they'll gather information about all the pheremones in a certain radius, then take a step (or a few steps) in a direction before gathering information again and making a new decision. If I implement this right, I don't think I'll need to store a home or food location in each ant object. I think I'll be able to let the environment inform them where home and food are. I think this is how real ants navigate.
* I'd like to use better design principles.

Opportunities for continued learning and research:

* I don't know enough about how interfaces and inheritance should work in Processing and Java. I could research this easily, but I chose not to here, as the main goal was to implement a project from beginning to end. As a result, there's some repetitive and less-than-ideal code in this project. I hope to return soon and improve this aspect of the sketch.
* I purchased the book "The Insect Societies," by E.O. Wilson. He's one of the leading researchers in social insect behavior and biology, and this book supposedly analyzes ant behavior mathematically. I'm excited to see what's under the cover.
* I want to learn more about pathfinding and navigation algorithms.