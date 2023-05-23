void setup() {
  size(500, 500);
  frameRate(30);
  
}
Coffee coffee = new Coffee(0, 0);
void draw(){
    background(255, 255, 255);
    coffee.drawCoffee();
    coffee.move();
    
}
