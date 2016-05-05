class Map extends Player
{
  color c, d, e, f, stem;
  Map (float x, float y)
  {
    super (x, y);
    c = color (230, 188, 114);
    d = color (236, 168, 53);
    e = color (255, 82, 48);
    f = color (192, 63, 38);
    stem = color (17, 159, 25);

    pos = new PVector(0, 50);
  }

  void update()
  {
  }

  void render()
  {
    stroke(50, 50, 255);
    fill(50, 50, 255);
    rect (0, 0, width, 50);

    pushMatrix();
    translate (pos.x, pos.y);
    for (int x=0; x< unearth.length; x++)
    {
      for (int z=0; z< unearth.length; z++)
      {
        if (unearth[x][z] == true)
        {
          if (z>-1
            &&z<=4)
          {
            stroke (c);
            fill (c);
          }
          if (z>4
            &&z<=9)
          {
            stroke (d);
            fill (d);
          }
          if (z>9
            &&z<=14)
          {
            stroke (e);
            fill (e);
          }
          if (z>14
            &&z<=19)
          {
            stroke (f);
            fill (f);
          }
          rect (x*20, z*20, 20, 20);
        }
      }
    }
    stroke (stem);
    line (375, 0, 375, -20);
    line (375, 0, 370, -10);
    line (375, 0, 380, -10);

    stroke (255);
    fill (255);
    ellipse (375, -25, 10, 7);

    stroke (d);
    fill (d);
    ellipse (375, -25, 5, 5);
    
    stroke (stem);
    line (350, 0, 350, -20);
    line (350, 0, 345, -10);
    line (350, 0, 355, -10);

    stroke (255);
    fill (255);
    ellipse (350, -25, 10, 7);

    stroke (d);
    fill (d);
    ellipse (350, -25, 5, 5);
    popMatrix();

    //stroke(0);
    //text ("SCORE:"+score,5,15);
    //println (score);
  }
}