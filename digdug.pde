void setup()
{
  size (400,450);
  gameObject.add(new Map(0,0));
  gameObject.add(new Player(0,0));
  gameObject.add(new Enemy(0,0));
  
  

  
}

ArrayList<Gameobject> gameObject = new ArrayList <Gameobject>();


boolean[] keys =  new boolean [2000];

color sky = color (50,50,255);

boolean[][]unearth = new boolean [20][20];
boolean[][]villain = new boolean [20][20];
float gamestate = 0;
float therealldead = 0;

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
   therealldead = 0;
  
  
  for (int w=0; w< villain.length; w++)
  {
    for (int z=0; z< villain.length; z++)
    {
      if (villain [w][z] == false)
      {
        therealldead ++;
      }
    }
  }
  
  if (therealldead >= 400 )
  {
    gamestate = 2;
  }

  
  background (0);
  
  if (gamestate == 0)
  {
   stroke (sky);
   fill (sky);
   rect (0,0,width,height);
    
   stroke(255);
   fill (0,240,255);
   textSize (50);
   text ("DIGDUG",100,180);
   textSize (20);
   fill (255);
   text ("PRESS SPACE TO START", 85, 260);
   
   if (keys [' '])
   {
     gamestate = 1;
   }
  }
  
  if (gamestate == 1)
  {
    for (int i = 0; i < gameObject.size(); i++)
    {
      textSize (15);
      Gameobject g = gameObject.get(i); //just go with it, this works ¯\_(ツ)_/¯
      g.render();
      g.update();
    }
   }
     if (gamestate == 2)
     {
       stroke (sky);
       fill (sky);
       rect (0,0,width,height);
       stroke (255);
       fill (255);
       textSize (50);
       text ("YOU WIN!",100,180);
     }
   
   println (therealldead);
}