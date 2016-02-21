class Characters
{
  int char_size;//In reference to the game characters not the datatype
  PVector gravity;
  PVector pos;
  PVector jump;
  PImage hero;
  Characters()
  {
    char_size = 59;//It's a square, and helps to fix positioning
    gravity = new PVector (0,3);
    pos = new PVector (width/2-(char_size/2),height/2);
    jump = new PVector (0,-4);
  }
  void soviet_hero()
  {
    hero = loadImage("Soviethero.png");
    image(hero,pos.x,pos.y);
    if(pos.y < height-char_size)
    {
      pos.add(gravity);
      //Placeholder Gravity until terrain object created
    }
    keyPressed();
  }
  void keyPressed()
  {
    if(key == 'w')
    {
      for(int i = 0; i < 10; i++)
      {
        pos.add(jump);
      }
    }
  }
}
