class Coffee extends Character{

    public Coffee(){
        super();
    } 

    public Coffee(float x, float y/**String flavor, /** map Map*/){
        super(x,y);
        status = true;
    }

    private String flavor;
    private boolean status;
    int dir;

    public boolean sweetAhead(){
        return true;
    }

    public void eatSweet(){
    } 

    public void makeWhipped(){
    }

    public void die(){
      status = false;
    }

    public void drawCoffee(){
        noStroke();
        fill(205, 118, 71);
        rect(getPos().x, getPos().y, 20, 40);
        fill(0,0,0);
        if(dir==0)
        circle(getPos().x+15, getPos().y+10, 5);
        if(dir==1)
        circle(getPos().x+5, getPos().y+10, 5);
        if(dir==3)
        circle(getPos().x+10, getPos().y+10, 5);
        
  
    }

    public void move(){
   if(status!=false){
        if(keyPressed){
            float deltaX = 0;/**will change to constant*/
            float deltaY = 0;
        if(keyCode==RIGHT) {
          deltaX =  LevelValues.GRID_SIZE;
          dir = 0; 
        }
        if(keyCode==LEFT)  {
        deltaX = -LevelValues.GRID_SIZE;
        dir = 1;
        }
        if(keyCode==UP)    {
        deltaY = -LevelValues.GRID_SIZE;
        dir = 2;
        }
        if(keyCode==DOWN)  {
        deltaY =  LevelValues.GRID_SIZE;
        dir = 3;
        }
        setPos(constrain(getPos().x+deltaX, 0, width-20), constrain(getPos().y+deltaY, 0, height-40));//will change to constants
 //       println(getPos().x);
   //     println(getPos().y);
        }  
 }
 }
}
