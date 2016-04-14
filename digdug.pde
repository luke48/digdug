void setup()
{
  size (400,450);
  gameObject.add(new Map(0,0));
  gameObject.add(new Player(0,0));
}

ArrayList<Gameobject> gameObject = new ArrayList <Gameobject>();
boolean[] keys =  new boolean [2000];

void keyPressed()
{
  keys[keyCode] = true;
}
void keyReleased()
{
  keys[keyCode] = false;
}


void draw()
{
  background (0);
  stroke(50,50,255);
  fill(50,50,255);
  rect (0,0,width,50);
  for (int i = 0; i < gameObject.size(); i++)
  {
    Gameobject g = gameObject.get(i); //just go with it, this works ¯\_(ツ)_/¯
    g.render();
    g.update();
  }
}