class LevelReader {
 
  String file;
  boolean isFirstMap;
  
  public LevelReader(int level, int tier) {
    file = "../../levels/level_" + level + "/" + tier;
    isFirstMap = tier > 0;
  }
  
  String getFile() {
    return file;
  }
  
  
  
}
