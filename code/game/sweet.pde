class Sweet {
 
  private PVector pos;
  private String type;
  
  public Sweet(PVector pos, String type) {
    this.pos = pos;
    this.type = type;
  }
  
  void drawSweet() {
    fill(99, 70, 53);
    rect(getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
  }
  
  PVector getPos() {
    return pos;
  }
  
  String getType() {
    return type;
  }
  
}
