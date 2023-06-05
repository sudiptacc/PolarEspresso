class Destructible extends Obstacle {
  
  private Map map;
  
  public Destructible (PVector pos, Map map) {
    super(pos);
    this.map = map;
  }
  
  public boolean hasSweet() {
     Sweet[] sweets = map.getSweets();
     
     for (Sweet sweet : sweets) {
       if (getPos().equals(sweet.getPos())) return true;
     }
     
     return false;
  }
  
  public void drawObject() {
    fill(255, 255, 255);
    rect(getPos().y * LevelValues.GRID_SIZE + LevelValues.PADDING,
           getPos().x * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
  }
}
