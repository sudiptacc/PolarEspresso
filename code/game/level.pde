

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
private PImage badGuyImage;

private ArrayList<BadGuy> badGuys;

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
  
  coffee = new Coffee(x, y);
  
  badGuys = new ArrayList<BadGuy>();
  for (PVector position : maps.get(currentTier).getBadGuys()) {
    badGuys.add(new BadGuy(position.x, position.y));
  }
  
  coffeeForward = loadImage("characterArt/coffee_forward.png");
  coffeeBack = loadImage("characterArt/coffee_back.png");
  coffeeLeft = loadImage("characterArt/coffee_left.png");
  coffeeRight = loadImage("characterArt/coffee_right.png");
  coffeeDead = loadImage("characterArt/coffee_dead.png");
  badGuyImage = loadImage("characterArt/bad_guy.png");
}

void reset() {
  
}

void gameLogic() {
  sweetsEaten += coffee.eatSweet(maps.get(currentTier));
  score = sweetsEaten * 1000;
  
  if (maps.get(currentTier).getSweets().isEmpty()) {
    currentTier++;
    reset();
  }


  coffee.collisions(maps.get(0));
  coffee.move();
  
  for (BadGuy enemy : badGuys) {
    enemy.move();
    enemy.attack(coffee);
  }
}

void draw() {
  background(199, 160, 141);
  
   gameLogic();
  
  maps.get(currentTier).drawMap();
  coffee.drawCoffee(coffeeRight, coffeeLeft, coffeeBack, coffeeForward, coffeeDead);
  for (BadGuy enemy : badGuys) {
    enemy.drawBadGuy(badGuyImage);
  }
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
