class Sweet {
 
  private PVector pos;
  private String type;
  private PImage sweet;
  
  public Sweet(PVector pos, String type) {
    this.pos = pos;
    this.type = type;
    this.sweet = loadImage("../../art/chocolate_empty.png");
  }
  
  void drawSweet() {
    fill(99, 70, 53);
    image(sweet,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
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
