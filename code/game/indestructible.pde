class Indestructible extends Obstacle {
  
  public Indestructible (PVector pos) {
    super(pos);
  }
  
  public void drawObject() {
    fill(224, 94, 18);
    rect(getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
  }
}
