This is Boog:

![Boog](StationaryBoog/Boog.png)

He's a bug, but he's into ballet and leathermaking, which aren't things most bugs are into. He also laser eyes. Boog feels pretty lonely most of the time because he's the only creature of his species. Maybe one day I'll make him a friend.

Boog's sketches will be used to implement the techniques and concepts that I'm learning from other sketches into more fully developed programs.

In one of the earliest sketches, Boog hovers waveringly in place, and he can be provoked into movement by left-clicking within the program window. He fires lasers from his eyes at the user's cursor when the user holds down the right mouse button.

![Boog flying](BoogCanFly/BoogCanFly.gif)

I know this project can be improved, but I'm unsure how to do this at the moment. While I was creating this, I was reminded of SOLID principles and of concepts like dependency injection, and I can see how these could help me organize my objects better. I want to do more research into design patterns to learn if there is a better way to make these bugs. I'm thinking that a BoogBuilder class may be useful. I could pass a list of generic BodyPart objects into the class and build my Boogs from there. This would prevent me from having classes that generate their own dependencies.

I'm also unsure when (at which level) each body part should be drawn. Maybe something like a BoogDisplayer would be as useful as a BoogBuilder.

I'm certain I should also be using interfaces and possibly parent classes in this project, but I cannot decide which to use or when.

I asked a junior developer who works with me, and I asked a senior developer, and while they had several suggestions, I wasn't sure which to implement at this time. I plan to ask our architect as well.

I have a lot to learn in this area! I've looked into SOLID, dependency injection, interface usage, and design patterns before, but they've never been so relevant. I'm reapproaching them now with new eyes.

I will revisit this sketch when I've learned a little more.