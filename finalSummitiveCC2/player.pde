class player
{
  //to make the player jump
  int jumpTime;
  boolean jump = false;
  //player images,  facing left and right side
  PImage playerR;
  PImage playerL;
  //player position
  float x;
  float y;
  //constructor
  player()
  {
    //loading both images
    playerR = loadImage("playerR.png");
    playerL = loadImage("playerL.png");
    //player position
    x = 117;
    y = 460;
  }

  void draw()
  {
    //size of images of player
    playerR. resize(50, 50);
    playerL. resize(50, 50);
    //drawing the player
    image (playerR, x, y);
  }

  void move()
  {
    
    //player moving comands
    // making him jump 
   
    if (jumpTime > 200)
    {
      y -= 2;
      jumpTime -=10;
    } else if (jumpTime <= 200 && jumpTime > 0)
    {
      jumpTime -=10;
      y+=2;
    } else
    {
      jump = false;
    }
    //making him move up, right, and left
    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == UP)
        {
          //jump
          if (jump == false)
          {
            jumpTime = 400;
            jump = true;
          }
        }
        //im pressed right key
        if (keyCode == RIGHT)
        {
          //drawing rightfacing player image
          image (playerR, x, y);
          //moving player x position
          x = x + 2;
          //moving player y position
          y = y - 0.03;
        }
        //if left key pressed
        if (keyCode == LEFT)
        { 
          //drawing leftfacing player image
          image (playerL, x, y);
          //moving player x position
          x = x - 2;
          //moving player y position
          y = y - 0.03;
        }
      }
      // if space key pressed 
      if (key == ' ' )
      {
        //moving the player up all the laders if space key pressed in a specific area
        if (x > 310)
        {
          if (y > 440)
          {
            y = y - 60;
          }
          if (y > 305)
          {
            if (y < 370)
            {
              y = y - 60;
            }
          }
          if (y > 186)
          {
            if (y < 240)
            {
              y = y - 60;
            }
          }
        }
        //
        if (x < 150)
        {
          if (y < 435)
          {
            if (y > 370)
            {
              y = y - 60;
            }
          }
          if (y < 303)
          {
            if (y > 240)
            {
              y = y - 60;
            }
          }
        }
      }
    }
    //boundries of player
    // boundries 
    if (x > 380)
    {
      x = 380;
    }
    if (x < 72)
    {
      x = 72;
    }
  }
}
