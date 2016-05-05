class Enemy extends Player
{
  color skin,goggle;
  float timeDelta;
  float direct;
  Enemy (float x, float y)
  {
    super (x,y);
    timeDelta = 0;
    pos = new PVector (0,0);
    skin = color (255,99,41);
    goggle = color (255,233,19);
  }
  
  void update()
  {
    //timeDelta ++;
    //if (timeDelta >60)
    //{
    //  timeDelta = 0;
    //  for (int w=0; w< villain.length; w++)
    //  {
    //   for (int z=0; z< villain.length; z++)
    //   {
    //     if (villain [w][z] == true)
    //     {
    //       if (w>0 && w<19
    //        && z>0 && z<19)
    //       {
    //         if (unearth [w-1][z] == false)
    //         {
    //           random.add (new Left());
    //         }
             
    //         if (unearth [w+1][z] == false)
    //         {
    //           random.add (new Right());
    //         }
             
    //         if (unearth [w][z-1] == false)
    //         {
    //           random.add(new Up());
    //         }
             
    //         if (unearth [w][z+1] == false)
    //         {
    //           random.add(new Down());
    //         }      
    //       }
    //     }
    //   }
    //  }
    //}
    
  }
  
  
  
  void render()
  {
    pushMatrix();
    translate (pos.x,pos.y);
    for (int w=0; w< villain.length; w++)
     {
       for (int z=0; z< villain.length; z++)
       {
         if (villain [w][z] == true)
         {
          stroke (skin);
          fill (skin);
          ellipse (w*20+10,z*20+60,20,20);
          
          stroke (goggle);
          fill (goggle);
          rect (w*20,z*20+56,20,5);
              timeDelta ++;
          if (timeDelta >30)
          {
            direct = int (random (0,3));
            if (direct == 0)
            {
              if (unearth [w][z-1] == false
                &&z>1)
              {
                villain [w][z] = false;
                villain [w][z-1] = true;
              }
              else
              {
                direct = int(random (1,3));
              }
              
              
            if (direct == 1)
            {
              if (unearth [w+1][z] == false
                &&w<18)
              {
                villain [w][z] = false;
                villain [w+1][z] = true;
              }
              else
              {
                direct = int (random (0,3));
              }
            }
            
            if (direct == 2)
            {
              if (unearth [w][z+1] == false
                &&z<18)
              {
                villain [w][z] = false;
                villain [w][z+1] = true;
              }
              else
              {
                direct = int (random (1,3));
              }
            }
           
            if (direct == 3)
            {
              if (unearth [w-1][z] == false
                &&w>1)
              {
                villain [w][z] = false;
                villain [w-1][z] = true;
              }
              else
              {
                direct = int (random (1,2));
              }
            }
          }
          timeDelta = 0;
        }
    

      }
    }
   }
   popMatrix();
   println( timeDelta + " " + direct);
  }
}