class Gameobject
{
  PVector pos;
  PVector forwardy;
  PVector forwardx;
  float theta;
  float test;
  int score;
  float inflation;
  Gameobject(float x, float y)
  {
    score = 0;
    inflation=0;
    pos = new PVector(x,y);
    test = 0;
    
     for (int w=0; w< unearth.length; w++)
     {
       for (int z=0; z< unearth.length; z++)
       {
         unearth[w][z] = true;
       }
     }
     for (int w=0; w< villain.length; w++)
     {
       for (int z=0; z< villain.length; z++)
       {
         villain[w][z] = false;
       }
     }
     
     unearth[5][3] = false;
     unearth[5][4] = false;
     unearth[5][5] = false;
     unearth[5][6] = false;
     
     villain[5][4] = true;
     
     unearth [8][10] = false;
     unearth [9][10] = false;
     unearth [10][10] = false;
     unearth [11][10] = false;
     unearth [12][10] = false;
     
     villain [10][10] = true;
     
     unearth [2][17] = false;
     unearth [3][17] = false;
     unearth [4][17] = false;
     unearth [5][17] = false;
     unearth [6][17] = false;
     unearth [7][17] = false;
     unearth [8][17] = false;
     
     villain [2][17] = true;
     
     unearth [15][5] = false;
     unearth [16][5] = false;
     unearth [17][5] = false;
     unearth [18][5] = false;
     unearth [18][6] = false;
     unearth [18][7] = false;
     unearth [18][8] = false;
     unearth [18][9] = false;
     unearth [18][10] = false;
     unearth [18][11] = false;
     unearth [18][12] = false;
     
     villain [15][5] = true;
     villain [18][11] = true;
  }
 
  void update()
  {}
 
  void render()
  {
    stroke(255);
    text ("SCORE: " + score + " !",5,15);
  }
  
  
}