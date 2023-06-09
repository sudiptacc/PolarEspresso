class BadGuy extends Character{
    int deltaX = 10;
    public BadGuy(){
        super();
    }

    public BadGuy(float x, float y /** map Map*/){
        super(x,y);
    }

    public void attack(Coffee goodGuy){
     float x = getPos().x;
     float y = getPos().y;
     float gx = goodGuy.getPos().x;
     float gy = goodGuy.getPos().y;
     boolean xRange = (x>=gx && x<=gx+LevelValues.GRID_SIZE) || (x+LevelValues.GRID_SIZE>=gx && x+LevelValues.GRID_SIZE<=gx+LevelValues.GRID_SIZE);
     boolean yRange = (y>=gy && y<=gy+LevelValues.GRID_SIZE) || (y+LevelValues.GRID_SIZE>=gy && y+LevelValues.GRID_SIZE<=gy+LevelValues.GRID_SIZE);
     //if x is greater than gx and less than gx +20
    if(xRange && yRange) goodGuy.die();
    }
    
    public void drawBadGuy(PImage img){
    image(img, getPos().x, getPos().y);
    }
    
    public void move(){
      //int deltaX=10;//LevelValues.GRID_SIZE;
      if(getPos().x == width-(LevelValues.GRID_SIZE+LevelValues.PADDING)) deltaX = -LevelValues.GRID_SIZE;
      if(getPos().x == LevelValues.GRID_SIZE + LevelValues.PADDING) deltaX = LevelValues.GRID_SIZE;
      float finalX = constrain(getPos().x+deltaX,LevelValues.GRID_SIZE + LevelValues.PADDING,width-(LevelValues.GRID_SIZE+LevelValues.PADDING));
      setPos(finalX, getPos().y);
      println(getPos().x);
      println(deltaX);

      }
      
      
    }
