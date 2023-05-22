abstract class Character{
private PVector pos;
private Map map;
public Character(){
    pos = new PVector();
    map = new Map();
}

public Character(float x, float y, Map mapParam){
    pos = new PVector(x, y);
    map = mapParam;
}

abstract public void move()
public boolean blockAhead(){
}

public boolean meltWhipped(){
}

public Map getMap(){
    return map;
}

public PVector getPos(){
    return pos;
}
}
