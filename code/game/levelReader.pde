class LevelReader {
 
  String file;
  boolean isFirstMap;
  PVector playerPos = new PVector(-1, -1);
  
  ArrayList<ArrayList<Obstacle>> obstacleLayout;
  ArrayList<Sweet> sweetLayout;
  ArrayList<PVector> badGuyLayout;
  
  
  public LevelReader(int level, int tier) {
    file = "../../levels/level_" + level + "/" + tier;
    isFirstMap = tier == 0;
    readMap();
  }
  
  ArrayList<ArrayList<Obstacle>> getObstacles() {
    return obstacleLayout;
  }
  
  ArrayList<Sweet> getSweets() {
    return sweetLayout;
  }
  
  String getFile() {
    return file;
  }
  
  void readMap() {
    String[] lines = loadStrings(file);
    
    int start = 0;
    
    if (isFirstMap) {
      String[] position = lines[start++].split(" ");
      playerPos = new PVector(Integer.valueOf(position[0]), Integer.valueOf(position[1]));
    }
    
    for (int row = 0; row < LevelValues.BLOCK_HEIGHT; row++) {
      String line = lines[row + start];
      char[] items = line.toCharArray();
      ArrayList<Obstacle> obstacleRow = new ArrayList<Obstacle>();
      
      for (int column = 0; column < LevelValues.BLOCK_WIDTH; column++) {
        char item = items[column];
        PVector position = new PVector(column, row);
        if (item == '0') {
          obstacleRow.add(new Empty(position));
        } else if (item == '1') {
          obstacleRow.add(new Destructible(position));
        } else if (item == '2') {
          obstacleRow.add(new Indestructible(position));
        } else if (item == '3') {
          badGuyLayout.add(position);
        }
      }
    }
  }
  
}
