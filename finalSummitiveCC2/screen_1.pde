//this screen doesn't play sometimes because of the loading time. 
class screen1
{
  //constructor
  screen1()
  {
  }
  void draw()
  {
    //black background
    background (0);
    //size of text
    textSize(30);
    //text, all the controls
    text("Controls :", 20, 40);
    text("Press UP to jump",20, 80  );
    text("Press LEFT to move backwards", 20, 120  );
    text("Press RIGHT to move forward", 20, 160 );
    text("Press SPACE to climb Ladders", 20, 200 );
    
    if (millis() > 7000)
    {
      //changing screens
      screen = 2;
    }
  }
}
