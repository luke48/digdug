class Map extends Player
{
  color c;
  Map (float x, float y)
  {
    super (x,y);
    c = color (230,188,114);
    pos = new PVector(0,50);
  }
  
  void update()
  {
    
  }
  
  void render()
  {
    pushMatrix();
    translate (pos.x, pos.y);
    for (int x=0; x< unearth.length; x++)
    {
      for (int z=0; z< unearth.length; z++)
      {
        if (unearth[x][z] == true)
        {
          stroke (230,188,114);
          fill (230,188,114);
          rect (x*20,z*20,20,20);
        }
      }
    }
    popMatrix();
    
  }
}