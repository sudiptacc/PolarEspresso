class Indestructible extends Obstacle {
  
  PImage indestructible;
  
  public Indestructible (PVector pos) {
    super(pos);
     indestructible = loadImage("../../art/permanent_ob.png");
  }
  
  public void drawObject() {
    fill(224, 94, 18);
    image(indestructible,
           getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
  }
}
