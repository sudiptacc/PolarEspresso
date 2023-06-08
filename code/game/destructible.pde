class Destructible extends Obstacle {
  
  public Destructible (PVector pos) {
    super(pos);
  }
  
  public void drawObject() {
    fill(227, 207, 195);
    rect(getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
  }
}
