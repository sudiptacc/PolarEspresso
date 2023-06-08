public int score = 0;
public int sweetsEaten = 0;

public int timeLeft = 120 * 1000;
public int timePassed = 0;

private ArrayList<Map> maps;
private int currentTier = 0;

void settings() {
  size(LevelValues.GRID_SIZE * LevelValues.BLOCK_WIDTH + 2 * LevelValues.PADDING,
       LevelValues.GRID_SIZE * LevelValues.BLOCK_HEIGHT + 2 * LevelValues.PADDING + GameInfoPanelValues.PANEL_HEIGHT);
}

void setup() {
  maps = new ArrayList<Map>();
  
  background(255, 255, 255);
  
  maps.add(new Map(0, currentTier));
}

void reset() {
  
}

void draw() {
  background(255, 255, 255);
  
  maps.get(currentTier).drawMap();
  
  infoPanelDraw();
  timeUpdate(millis());
}

/* Complete info panel draw */
void infoPanelDraw() {
  timePanelDraw();
  scorePanelDraw();
}

void timePanelDraw() {
  int timeX = LevelValues.GRID_SIZE * LevelValues.BLOCK_WIDTH + LevelValues.PADDING;
  int timeY = LevelValues.GRID_SIZE * LevelValues.BLOCK_HEIGHT + 2 * LevelValues.PADDING + LevelValues.GRID_SIZE;
  
  fill(0, 0, 0);
  textAlign(RIGHT);
  textSize(GameInfoPanelValues.TEXT_SIZE);
  text(formatTime(timeLeft), timeX, timeY);
  fill(255, 255, 255);
}

void scorePanelDraw() {
  int scoreX = LevelValues.PADDING;
  int scoreY = LevelValues.GRID_SIZE * LevelValues.BLOCK_HEIGHT + 2 * LevelValues.PADDING + LevelValues.GRID_SIZE;
  
  fill(0, 0, 0);
  textAlign(LEFT);
  textSize(GameInfoPanelValues.TEXT_SIZE);
  text(score, scoreX, scoreY);
  fill(255, 255, 255);
}


String formatTime(int timeMs) {
  String time = "";
  
  time += timeMs / (60 * 1000) + ":";
  int seconds = timeMs / 1000 % 60;
  if (seconds < 10) time += "0" + seconds;
  else time += seconds;
  
  return time;
}

void timeUpdate(int timeSince) {
  /* deltaTime is the amount of time that has passed from the last draw to the current draw, in ms */
  int deltaTime = timeSince - timePassed;
  timePassed += deltaTime;
  timeLeft -= deltaTime;
  
  if (timeLeft <= 0) {
    reset();
    timeLeft = 120 * 1000;
  }
  
}
