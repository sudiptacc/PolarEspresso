void setup() {
  size(500, 500);
  frameRate(12);
  println(width);
  println(height);

}
  Coffee coffee = new Coffee(0, 0);
  BadGuy badguy = new BadGuy(480,460); //make constant later

void draw(){
    background(255, 255, 255);
    coffee.drawCoffee();
    coffee.move();
    badguy.drawBadGuy();

    badguy.move();
    badguy.attack(coffee);
    
    
}
