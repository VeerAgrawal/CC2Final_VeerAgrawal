//class
class barrels
{
  //image of barrel
  PImage barrel;
  //pvector for barrel position
  PVector a = new PVector (190, 155);
  //construcctor
  barrels()
  {
    //loading image
    barrel = loadImage("barrel.png");
  }
  void draw()
  {
    //size of barrel
    barrel.resize(30, 30);
    //drawing barrel image
    image (barrel, a.x, a.y);
  }

  void move()
  {
    //movemnts of 1 barrel (made with the help of the cursor location)
    if (a.x > 160)
    {
      if (a.y < 185)
      {
        a.x = a.x + 2;
        a.y = a.y + 0.08;
      }
    }
    if (a.x > 350)
    {
      if (a.y < 195)
      {
        a.y = a.y + 55;
      }
    }
    if (a.x < 400)
    {
      if (a.y < 235)
      {
        if (a.y > 192)
        {
          a.x = a.x - 2;
          a.y = a.y + 0.08;
        }
      }
    }
    if (a.x < 140)
    {
      if (a.y < 265)
      {
        a.y = a.y + 55;
      }
    }
    if (a.x > 110)
    {
      if (a.y < 300)
      {
        if (a.y > 255)
        {
          a.x = a.x + 2;
          a.y = a.y + 0.08;
        }
      }
    }
    if (a.x > 350 )
    {
      if (a.y > 270)
      {
        if (a.y < 333)
        {
          a.y = a.y + 55;
        }
      }
    }
    if (a.x< 400)
    {
      if (a.y > 325)
      {
        if (a.y < 390)
        {
          a.x = a.x - 2;
          a.y = a.y + 0.08;
        }
      }
    }
    if (a.x < 145)
    {
      if (a.y > 330)
      {
        a.y = a.y + 55;
      }
    }
    if (a.x > 100)
    {
      if (a.y > 375)
      {
        if (a.y < 445)
        {
          a.x = a.x + 2;
          a.y = a.y + 0.08;
        }
      }
    }
    if (a.x > 350)
    {
      if (a.y > 385)
      {
        a.y = a.y + 55;
      }
    }
    if (a.x < 400)
    {
      if (a.y > 440)
      {
        if (a.y < 500)
        {
          a.x = a.x - 2;
          a.y = a.y + 0.08;
        }
      }
    }
  }
}
