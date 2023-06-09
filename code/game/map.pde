public class Map {
  
  private ArrayList<ArrayList<Obstacle>> obstacleLayout;
  private ArrayList<Sweet> sweetLayout;
  private ArrayList<PVector> badGuyLayout;
  private PVector startPos;
  
  public Map( int level, int tier) {
    LevelReader reader = new LevelReader(level, tier);
    
    obstacleLayout = reader.getObstacles();
    sweetLayout = reader.getSweets();
    badGuyLayout = reader.getBadGuys();
    startPos = reader.getPlayerStartPos();
  }
  
  public Map(ArrayList<ArrayList<Obstacle>> obstacleLayout, ArrayList<Sweet> sweetLayout, PVector startPos) {
    this.startPos = startPos;
  }
  
  PVector getPosition() {
    return startPos;
  }
  
  ArrayList<PVector> getBadGuys() {
    return badGuyLayout;
  }
  
  ArrayList<Sweet> getSweets() {
    return sweetLayout;
  }
  
  ArrayList<ArrayList<Obstacle>> getObstacles() {
    return obstacleLayout;
  }
  
  void drawMap() {
    generateObstacles();
    generateSweets();
  }
  
  void generateObstacles() {
    for (ArrayList<Obstacle> row : obstacleLayout) {
      for (Obstacle obst : row) {
        obst.drawObject();
      }
    }
  }
  
  void generateSweets() {
    for (Sweet sweet : sweetLayout) {
      sweet.drawSweet();
    }
  }
  
  private void checkCharacter() {
    
  }

  
}
