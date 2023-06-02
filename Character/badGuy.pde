class BadGuy extends Character{
    int deltaX = 10;
    public BadGuy(){
        super();
    }

    public BadGuy(float x, float y /** map Map*/){
        super(x,y);
    }

    public void attack(Coffee goodguy){
    if(goodGuy.getPos().x <= getPos().x <= getPos().x==goodGuy.getPos()+20))
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
