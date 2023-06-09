abstract class Character{
private PVector pos;
//private Map map;
public Character(){
    pos = new PVector(0, 0);
//    map = new Map();
}

public Character(float x, float y/**, Map mapParam*/){
    pos = new PVector(x, y);
//    map = mapParam;
}

abstract public void move();

/**public boolean blockAhead(){
}

public boolean meltWhipped(){
}

public Map getMap(){
    return map;
}
*/
public PVector getPos(){
    return pos;
}

public void setPos(float x, float y){
    pos.set(x, y);   
}
}
