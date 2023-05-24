class BadGuy extends Character{
    public BadGuy(){
        super();
    }

    public BadGuy(float x, float y /** map Map*/){
        super(x,y);
    }

    public void attack(){}
    
    public void drawBadGuy(){
    fill(255,0,0);
    rect(getPos().x, getPos().y, 20, 40);
    }
    
    public void move(){
      deltaX = LevelValues.GRID_SIZE;
      if(getPos().x==width) deltaX = -LevelValues.GRID_SIZE;
      if(getPos().x==0) deltaX == LevelValues.GRID_SIZE;
      setPos(getPos().x+deltaX, getPos().y);

      }
      
      
    }
}
