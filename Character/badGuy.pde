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
     boolean xRange = (x>=gx && x<=gx+20) || (x+20>=gx && x+20<=gx+20);
     boolean yRange = (y>=gy && y<=gy+40) || (y+40>=gy && x+40<=gy+40);
     //if x is greater than gx and less than gx +20
    if(xRange && yRange) goodGuy.die();
    }
    
    public void drawBadGuy(){
    fill(255,0,0);
    rect(getPos().x, getPos().y, 20, 40);
    }
    
    public void move(){
      //int deltaX=10;//LevelValues.GRID_SIZE;
      if(getPos().x == width-20) deltaX = -10;
      if(getPos().x == 0) deltaX = 10;
      float finalX = constrain(getPos().x+deltaX,0,width-20);
      setPos(finalX, getPos().y);
      println(getPos().x);
      println(deltaX);

      }
      
      
    }
