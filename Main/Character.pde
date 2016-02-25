class Characters
{
  void setup()
  {
    terrain = new Terrain();
  }
  Terrain terrain;
  int grav_y; 
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
    grav_y = terrain.y_value();
    
    if(pos.y +char_size < height - grav_y )
    {
      pos.add(gravity);
    }
    keyPressed();
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
