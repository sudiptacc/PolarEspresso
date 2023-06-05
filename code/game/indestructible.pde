class Indestructible extends Obstacle {
  
  public Indestructible (PVector pos) {
    super(pos);
  }
  
  public void drawObject() {
    fill(255, 255, 255);
    rect(getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
  }
}
