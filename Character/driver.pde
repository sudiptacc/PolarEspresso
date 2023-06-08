PImage coffeeFor;
PImage coffeeBack;
PImage coffeeLeft;
PImage coffeeRight;

void setup() {
  size(500, 500);
  frameRate(12);
  coffeeFor = loadImage("characterArt/coffee_forward.png");
  coffeeBack = loadImage("characterArt/coffee_back.png");
  coffeeLeft = loadImage("characterArt/coffee_left.png");
  coffeeRight = loadImage("characterArt/coffee_right.png");
  

}
  Coffee coffee = new Coffee(0, 0);
  BadGuy badguy = new BadGuy(480,460); //make constant later

void draw(){
    background(255, 255, 255);
    coffee.drawCoffee(coffeeRight, coffeeLeft, coffeeBack, coffeeFor);
    coffee.move();
    badguy.drawBadGuy();

    badguy.move();
    badguy.attack(coffee);
    
    
}
