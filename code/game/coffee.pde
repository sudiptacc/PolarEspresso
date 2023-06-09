class Coffee extends Character{
    PImage COFFEE_FORWARD;
    void setup(){
    COFFEE_FORWARD = loadImage("characterArt/coffee_forward.png");
    }

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

    public int eatSweet(Map map){
      ArrayList<Sweet> sweets = map.getSweets();
      
      for (Sweet sweet : sweets) {

        
        boolean sameX = sweet.getPos().x == (int) (getPos().x - LevelValues.PADDING) / LevelValues.GRID_SIZE; 
        boolean sameY = sweet.getPos().y == (int) (getPos().y - LevelValues.PADDING) / LevelValues.GRID_SIZE; 
        
        if (sameX && sameY) {
          sweets.remove(sweet);
          return 1;
        }
        
      }
      
      return 0;
    } 

    public void makeWhipped(){
    }

    public void die(){
      status = false;
    }

    public void drawCoffee(PImage right, PImage left, PImage up, PImage down, PImage dead){
        //noStroke();
       // fill(205, 118, 71);
        if(status == true){        
       // rect(getPos().x, getPos().y, 20, 40);
       // fill(0,0,0);
        
        if(dir==0)
        image(right, getPos().x, getPos().y);
        if(dir==1)
        image(left, getPos().x, getPos().y);
        if(dir==2)
        image(up, getPos().x, getPos().y);
        if(dir==3)
        image(down, getPos().x, getPos().y);
 
        }
    else{
    image(dead, getPos().x, getPos().y);
    }
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
        setPos(constrain(getPos().x+deltaX, 0, width-LevelValues.GRID_SIZE), constrain(getPos().y+deltaY, 0, height-LevelValues.GRID_SIZE));//will change to constants
 //       println(getPos().x);
   //     println(getPos().y);
        }  
 }
 }
}
