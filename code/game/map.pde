public class Map {

  private Obstacle[][] obstacleLayout;
  private Sweet[] sweetLayout;
  private PVector startPos;
  
  public Map(Obstacle[][] obstacleLayout, Sweet[] sweetLayout, PVector startPos) {
    this.startPos = startPos;
  }
  
  Sweet[] getSweets() {
    return sweetLayout;
  }
  
  Obstacle[][] getObstacles() {
    return obstacleLayout;
  }
  
  void generateSweets() {
    
  }
  
  private void checkCharacter() {
    
  }

  
}
