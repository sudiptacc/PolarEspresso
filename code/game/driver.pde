<<<<<<< HEAD
//PImage coffeeFor;
//PImage coffeeBack;
//PImage coffeeLeft;
//PImage coffeeRight;

//void setup() {
//  size(500, 500);
//  frameRate(12);
//  coffeeFor = loadImage("characterArt/coffee_forward.png");
//  coffeeBack = loadImage("characterArt/coffee_back.png");
//  coffeeLeft = loadImage("characterArt/coffee_left.png");
//  coffeeRight = loadImage("characterArt/coffee_right.png");
  
=======
PImage coffeeFor;
PImage coffeeBack;
PImage coffeeLeft;
PImage coffeeRight;
PImage coffeeDead;
PImage badGuy;

void setup() {
  size(500, 500);
  frameRate(12);
  coffeeFor = loadImage("characterArt/coffee_forward.png");
  coffeeBack = loadImage("characterArt/coffee_back.png");
  coffeeLeft = loadImage("characterArt/coffee_left.png");
  coffeeRight = loadImage("characterArt/coffee_right.png");
  coffeeDead = loadImage("characterArt/coffee_dead.png");
  badGuy = loadImage("characterArt/bad_guy.png");

>>>>>>> c1ee30ecd588cf690deb32d220cf19daeaca2c49

//}
//  Coffee coffee = new Coffee(0, 0);
//  BadGuy badguy = new BadGuy(480,460); //make constant later

<<<<<<< HEAD
//void draw(){
//    background(255, 255, 255);
//    coffee.drawCoffee(coffeeRight, coffeeLeft, coffeeBack, coffeeFor);
//    coffee.move();
//    badguy.drawBadGuy();
=======
void draw(){
    background(255, 255, 255);
    coffee.drawCoffee(coffeeRight, coffeeLeft, coffeeBack, coffeeFor, coffeeDead);
    coffee.move();
    badguy.drawBadGuy(badGuy);
>>>>>>> c1ee30ecd588cf690deb32d220cf19daeaca2c49

//    badguy.move();
//    badguy.attack(coffee);
    
    
//}
