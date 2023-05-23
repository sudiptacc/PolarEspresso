public int score = 0;
public int sweetsEaten = 0;

//private Map[] tiers;

void settings() {
  size(LevelValues.GRID_SIZE * LevelValues.BLOCK_WIDTH + 2 * LevelValues.PADDING,
       LevelValues.GRID_SIZE * LevelValues.BLOCK_HEIGHT + 2 * LevelValues.PADDING + GameInfoPanelValues.PANEL_HEIGHT);
}

void setup() {
  background(255, 255, 255);
}

void draw() {
  levelDraw();
  infoPanelDraw();
}

void keyPressed() {
  
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
  int xPanel = LevelValues.PADDING;
  
  fill(0, 0, 0);
  textSize(48);
  rect(
  text(score, xPanel, yPanel);
}
