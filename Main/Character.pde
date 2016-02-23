class Characters extends Terrain
{
  int char_size;//In reference to the game characters not the datatype
  float a = 0; //used in jump vector
  PVector gravity;
  PVector pos;
  PVector jump;
  Boolean jumped;
  PImage hero;
  Characters()
  {
    char_size = 59;//It's a square, and helps to fix positioning
    gravity = new PVector (0,3);
    pos = new PVector (width/2-(char_size/2),height/2);
    jumped = false;
  }
  void soviet_hero()
  {
    //println(pos.y);
    hero = loadImage("Soviethero.png");
    image(hero,pos.x,pos.y);
    if(!jumped)
    {
     for(int i = 0; i < 299; i++)
     {
      if(pos.x > chunks[i][1]*scale && pos.x < chunks[i+1][1]*scale)
      {
        if(pos.y < (height-chunks[i][0])-char_size)
        {
          pos.add(gravity);
         //Gravity is based on terrain around it
        }
      }
     }
    }
    if(pos.y > 540)
    {
      keyPressed();
    }
  }
  void keyPressed()
  {
    jump = new PVector (0,(-sin(a))*5);
    if(key == 'w')
    {
      jumped = true;
      for(a = 0; a < 6.28; a += 0.04)
      {
        pos.add(jump);
      }
      key = 's';
      jumped = false;
    }
  }
}
