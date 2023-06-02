abstract class Obstacle {
 
  private PVector pos;
  
  public Obstacle(PVector pos) {
    this.pos = pos;
  }
  
  public PVector getPos() {
    return pos;
  }
  
  abstract void drawObject() {}
  
}
