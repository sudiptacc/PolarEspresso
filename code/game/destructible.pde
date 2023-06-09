class Destructible extends Obstacle {
  
  PImage destructible;
  
  public Destructible (PVector pos) {
    super(pos);
    destructible = loadImage("../../art/jello_empty.png");
  }
  
  public void drawObject() {
    fill(227, 207, 195);
    image(destructible,
           getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
  }
}
