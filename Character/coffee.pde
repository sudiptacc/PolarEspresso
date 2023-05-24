class Coffee extends Character{

    public Coffee(){
        super();
    } 

    public Coffee(float x, float y/**String flavor, /** map Map*/){
        super(x,y);
    }

    private String flavor;
    private boolean status;

    public boolean sweetAhead(){
        return true;
    }

    public void eatSweet(){
    } 

    public void makeWhipped(){
    }

    public void die(){
    }

    public void drawCoffee(){
        fill(205, 118, 71);
        rect(getPos().x, getPos().y, 20, 40);
  
    }

    public void move(){
   
        if(keyPressed){
            float deltaX = 0;/**will change to constant*/
            float deltaY = 0;
        if(keyCode==RIGHT) deltaX =  LevelValues.GRID_SIZE;
        if(keyCode==LEFT)  deltaX = -LevelValues.GRID_SIZE;
        if(keyCode==UP)    deltaY = -LevelValues.GRID_SIZE;
        if(keyCode==DOWN)  deltaY =  LevelValues.GRID_SIZE;
        setPos(constrain(getPos().x+deltaX, 0, width-20), constrain(getPos().y+deltaY, 0, height-40));//will change to constants
 //       println(getPos().x);
   //     println(getPos().y);
   }
 }
}
