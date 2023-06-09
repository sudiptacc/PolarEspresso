
public int score = 0;
public int sweetsEaten = 0;

public int timeLeft = 120 * 1000;
public int timePassed = 0;

private ArrayList<Map> maps;
private int currentTier = 0;

private Coffee coffee;

private PImage coffeeForward;
private PImage coffeeBack;
private PImage coffeeLeft;
private PImage coffeeRight;
private PImage coffeeDead;

void settings() {
  size(LevelValues.GRID_SIZE * LevelValues.BLOCK_WIDTH + 2 * LevelValues.PADDING,
       LevelValues.GRID_SIZE * LevelValues.BLOCK_HEIGHT + 2 * LevelValues.PADDING + GameInfoPanelValues.PANEL_HEIGHT);
}

void setup() {
  frameRate(15);
  
  maps = new ArrayList<Map>();
  
  background(199, 160, 141);
  maps.add(new Map(0, currentTier));
  
  PVector start = maps.get(currentTier).getPosition();
  
  int x = LevelValues.PADDING + LevelValues.GRID_SIZE * (int) start.x;
  int y = LevelValues.PADDING + LevelValues.GRID_SIZE * (int) start.y;
  
  print(start);
  coffee = new Coffee(x, y);
  
  coffeeForward = loadImage("characterArt/coffee_forward.png");
  coffeeBack = loadImage("characterArt/coffee_back.png");
  coffeeLeft = loadImage("characterArt/coffee_left.png");
  coffeeRight = loadImage("characterArt/coffee_right.png");
  coffeeDead = loadImage("characterArt/coffee_dead.png");
}

void reset() {
  
}

void gameLogic() {
  
}

void physicsUpdate() {
  
  coffee.collisions(maps.get(0));
  coffee.move();
}

void draw() {
  background(199, 160, 141);
  
  maps.get(currentTier).drawMap();
  coffee.drawCoffee(coffeeRight, coffeeLeft, coffeeBack, coffeeForward, coffeeDead);
  infoPanelDraw();
  timeUpdate(millis());
  
  physicsUpdate();
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
