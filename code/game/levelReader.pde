import java.util.Arrays;

class LevelReader {
 
  String file;
  boolean isFirstMap;
  PVector playerPos = new PVector(-1, -1);
  
  ArrayList<ArrayList<Obstacle>> obstacleLayout;
  ArrayList<Sweet> sweetLayout;
  ArrayList<PVector> badGuyLayout;
  
  
  public LevelReader(int level, int tier) {
    file = "../../levels/level_" + level + "/" + tier + ".map";
    isFirstMap = tier == 0;
    
    obstacleLayout = new ArrayList<ArrayList<Obstacle>>();
    sweetLayout = new ArrayList<Sweet>();
    badGuyLayout = new ArrayList<PVector>();
    
    readMap();
  }
  
  PVector getPlayerStartPos() {
    return playerPos;
  }
  
  ArrayList<ArrayList<Obstacle>> getObstacles() {
    return obstacleLayout;
  }
  
  ArrayList<Sweet> getSweets() {
    return sweetLayout;
  }
  
  ArrayList<PVector> getBadGuys() {
    return badGuyLayout;
  }

  private void readMap() {
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
        PVector position = new PVector(row, column);
        if (item == '0') {
          obstacleRow.add(new Empty(position));
        } else if (item == '1') {
          obstacleRow.add(new Destructible(position));
        } else if (item == '2') {
          obstacleRow.add(new Indestructible(position));
        } else if (item == '3') {
          badGuyLayout.add(position);
          obstacleRow.add(new Empty(position));
        }
      }
      obstacleLayout.add(obstacleRow);
    }
    
    for (int lineIndex = start + LevelValues.BLOCK_HEIGHT; lineIndex < lines.length; lineIndex++) {
      String line = lines[lineIndex];
      String[] coordinates = line.split(" ");
      
      int x = Integer.valueOf(coordinates[0]);
      int y = Integer.valueOf(coordinates[1]);
      
      sweetLayout.add(new Sweet(new PVector(x, y), "CHOCOLATE"));
    }
  }
  
}
