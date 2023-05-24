public int score = 0;
public int sweetsEaten = 0;

public int timeLeft = 120 * 1000;
public int timePassed = 0;

//private Map[] tiers;

void settings() {
  size(LevelValues.GRID_SIZE * LevelValues.BLOCK_WIDTH + 2 * LevelValues.PADDING,
       LevelValues.GRID_SIZE * LevelValues.BLOCK_HEIGHT + 2 * LevelValues.PADDING + GameInfoPanelValues.PANEL_HEIGHT);
}

void setup() {
  background(255, 255, 255);
}

void reset() {
  
}

void draw() {
  background(255, 255, 255);
  levelDraw();
  infoPanelDraw();
  timeUpdate(millis());
}

void levelDraw() {
  fill(255, 255, 255);
 for (int row = 0; row < LevelValues.BLOCK_WIDTH; row++) {
    for (int col = 0; col < LevelValues.BLOCK_HEIGHT; col++) {
      rect(row * LevelValues.GRID_SIZE + LevelValues.PADDING,
           col * LevelValues.GRID_SIZE + LevelValues.PADDING,
           LevelValues.GRID_SIZE,
           LevelValues.GRID_SIZE);
    }
  } 
}

/* Complete info panel draw */
void infoPanelDraw() {
  int yPanel = LevelValues.GRID_SIZE * LevelValues.BLOCK_HEIGHT + 2 * LevelValues.PADDING + LevelValues.GRID_SIZE;
  int xPanel = LevelValues.GRID_SIZE * LevelValues.BLOCK_WIDTH + LevelValues.PADDING;
  
  fill(0, 0, 0);
  textAlign(RIGHT);
  textSize(GameInfoPanelValues.TEXT_SIZE);
  text(formatTime(timeLeft), xPanel, yPanel);
}

String formatTime(int timeMs) {
  String time = "";
  
  time += timeMs / (60 * 1000) + ":";
  time += timeMs / 1000 % 60;
  
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
