class Gameobject
{
  PVector pos;
  PVector forwardy;
  PVector forwardx;
  float theta;
  float test;
  Boolean unearth[][];
  Gameobject(float x, float y)
  {
    pos = new PVector(x,y);
    unearth = new Boolean [20][20];
    test = 0;
    
     for (int w=0; w< unearth.length; w++)
     {
       for (int z=0; z< unearth.length; z++)
       {
         unearth[w][z] = true;
       }
     }
     unearth[5][3] = false;
     unearth[5][4] = false;
     unearth[5][5] = false;
     unearth[5][6] = false;
  }
 
  void update()
  {}
 
  void render()
  {}
}