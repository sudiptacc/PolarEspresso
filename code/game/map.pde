public class Map {

  private Obstacle[][] obstacleLayout;
  private Sweet[] sweetLayout;
  private PVector startPos;
  
  public Map(Obstacle[][] obstacleLayout, Sweet[] sweetLayout, PVector startPos) {
    this.startPos = startPos;
  }
  
  void Sweet[] getSweets() {
    return sweetLayout;
  }
  
  void getObstacles() {
    return obstacleLayout;
  }
  
  void generateSweets() {
    
  }
  
  private void checkCharacter() {
    
  }

  
}
