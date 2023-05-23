class Coffee extends Character{

public Coffee(){
super();
}

public Coffee(float x, float y /** map Map*/){
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
       if(keyCode==RIGHT) setPos(getPos().x+15/**will change to constant*/, getPos().y);
       if(keyCode==LEFT)  setPos(getPos().x-15/**will change to constant*/, getPos().y);
       if(keyCode==UP)    setPos(getPos().x/**will change to constant*/, getPos().y-15);
       if(keyCode==DOWN)  setPos(getPos().x/**will change to constant*/, getPos().y+15);
       println(getPos().x);
       println(getPos().y);
   }
 }
} 
