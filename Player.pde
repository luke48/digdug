class Player extends Gameobject
{
  color c;
  int x,y;
  float px,py;
  Player(float x, float y)
  {
    super (x,y);
    c = color (100,100,255);
    pos = new PVector (200,40);
    forwardy = new PVector(0,-1);
    forwardx = new PVector(-1,0);
    theta = 0;
    px = (pos.x);
    py = (pos.y);
    x = px;
    y = py;
  }
  
  void update()
  {
    if (keys [UP])
    {
      test ++;
     if (theta == 0
          && pos.y>=40)
      {
        pos.add(forwardy);
      }
      else
      {
        theta = 0;
      }
    }
    
    if (keys [DOWN])
    {
      test ++;
      if (theta == PI
          && pos.y <= (height-15))
      {
        pos.sub(forwardy);
      }
      else
      {
        theta = PI;
      }
    }
    
    if (keys [LEFT])
    {
      if (theta == (1.5*PI)
          && pos.x >= (15))
      {
        pos.add(forwardx);
      }
      else
      {
      test ++;
        theta = (1.5*PI);
      }
    }
    
    
    if (keys [RIGHT])
    {
      test ++;
      if (theta == (0.5*PI)
          && pos.x <= (height-60))
      {
        pos.sub(forwardx);
      }
      else
      {
        theta = (0.5*PI);
      }
    }
    
    
    for(int x=0; x< unearth.length; x++)
      {
        for (int z=0; z< unearth.length; z++)
        {
          if (unearth[x][z] == true)
          {
            //block hit
            if (
                 pos.x > x*20 -10
                 && pos.x < x*20 +25
                 && pos.y-50 > z*20 -10
                 && pos.y-60 < z*20 +20)
           {
              unearth[x][z] =false;
            }
          }
        }
      }
    
    //unearth [int((pos.x)/20)][int((pos.y)/20)] = fal  text (5,5,score + '!');
    
    pushMatrix();
    
    translate(pos.x,pos.y);
    rotate(theta);
    
    stroke (255);
    fill (255);
    ellipse (0,0,20,20);
    
    stroke (255);
    fill (c);
    triangle (0,-10,-7,5,7,5);
    
    
    if (keys [' '])
    {
      line (0,-10, -2,-13);
      line (-2,-13, 2, -16);
      line (2,-16, -2, -19);
      line (-2,-19, 2,-22);
      line (2,-22, 0,-25);
      
      for(int x=0; x< villain.length; x++)
      {
        for (int z=0; z< villain.length; z++)
        {
          if (villain[x][z] == true)
          {
           //block hit
            if (
                 pos.x > x*20 -35
                 && pos.x < x*20 +50
                 && pos.y-50 > z*20 -25
                 && pos.y-50 < z*20 +55)
            {
              inflation ++;
              if (inflation >60)
              {
                villain[x][z] =false;
                score += 500;
              }
              //println ("it's working "+ inflation);
            }
          }
        }
      }
    }
    else
    {
      inflation = 0;
    }
    
    popMatrix();
    
    
  }
}