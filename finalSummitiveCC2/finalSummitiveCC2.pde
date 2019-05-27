// This program has some glitches : 
   // the collissions are not perfect,
   // the instructions screen doesn't play sometimes because of the loading screen
   // in the start,
   // the player sometimes floats of the ground,
   // the 1st song is sometimes out of sync or it doesn't play.


//for loading the srating video 
import processing.video.*;
Movie myMovie;
// background image (game screen)
PImage background;
// screen 1 - instructions screen
screen1 scene1;
// loadding in player class 
player player1;
//loading gameover class 
screen4 scene4;
//barrel class
barrels barrels2;
//screens 
int screen = 0;
//sound
import processing.sound.*;
SoundFile track1;
String path;
//sound 2
SoundFile track2;
String path1;
// array list of barrels (making multiple barrels spawn)
ArrayList<barrels> hit = new ArrayList<barrels>();
int lastBarrel = 0;

void setup()
{
  //size
  size(485, 530);  
  //loading video 
  myMovie = new Movie (this, "donkykong.mov");
  background = loadImage ("background.png");
  //loading screen1 and 4
  scene1 = new screen1();
  scene4 = new screen4();
  //loading player and barrel classes
  player1 = new player();
  barrels2 = new barrels();
  //sound
  path = sketchPath ("track1.mp3");
  track1 = new SoundFile (this, path);
  //sound 2
  path1 = sketchPath("track2.mp3");
  track2 = new SoundFile(this, path1);
  // playing sound 2 but making the volume 0 
  track2.loop();
  track2.amp(0);
}

void draw()
{
  //playing screen 1
  scene1.draw();
  // if screen equals 2
  if (screen == 2)
  {
    if (millis() > 9203)
    {
      if (millis() < 9233)
      {
        //playing song 1 
        track1.play();
      }
    }
    //playing video in the start
    image(myMovie, 0, 0);
    myMovie.play();
    background.resize(485, 530);
    //when video is over 
    if (millis() > 24000)
    {
      if (screen == 2)
      {
        //changing screens
       
       
        screen = 3;
        
      }
    }
  }
  //if main game screen
  if (screen == 3)
  {
    //loading background image 
    image (background, 0, 0);
    //adding volume to sound 2
    track2.amp(1);
    //my mouses position, not needed in game
    text(mouseX, 10, 200);
    text(mouseY, 10, 250);
    // playing player and barrel classes
    player1.draw();
    player1.move();
    barrels2.draw();
    barrels2.move();
    // spawning additional barrels 
    if (millis() - lastBarrel > 2500)
    {
      lastBarrel = millis();
      hit.add(new barrels());
    }
    for (barrels b : hit)
    {
      //barrel, player collisions
      if (dist(player1.x, player1.y, b.a.x, b.a.y) < 25)
      {
        screen = 4;
      }
      b.draw();
      b.move();
    }
  }
  //gameover screen 
  if (screen == 4)
  {
   //teleprt back to the start
   player1.x = 117;
   player1.y = 460;
  }
  //if player reaches the top then they win
  if (player1.y < 140)
  {
    if (player1.x < 300)
    {
      //drawing wining screen
      scene4.draw();
    }
  }
}
//to load video 
void movieEvent(Movie m) 
{
  m.read();
}
