class Characters
{
  void setup()
  {
    terrain = new Terrain();
  }
  
  Terrain terrain;
  int j; //jump timer
  int char_size;//In reference to the game characters not the datatype
  float a = 0; //used in jump vector
  PVector gravity;
  PVector pos;
  PVector jump;
  Boolean jumping = false;
  PImage hero;
  
  Characters()
  {
    char_size = 59;//It's a square, and helps to fix positioning
    gravity = new PVector (0,3);
    pos = new PVector (width/2-(char_size/2),height/2);
  }
  
  void soviet_hero()
  {
    hero = loadImage("Soviethero.png");
    image(hero,pos.x,pos.y);  
    jump = new PVector (0,4);

    keyPressed();
    
    if(jumping)
    {
      jump.sub(0.0,a,0.0);
      a =+ 1;//This is a magic number, it took a long time to find it
      pos.sub(jump);
      j++;
    }
   else
    {
      if(pos.y +char_size < height - grav_y)
      {
        pos.add(gravity);
      }   
    }   
    
    if(j == 40)
    {
      jumping = false;
      j = 0;
    }
  }
  
  void keyPressed()
  {
   if(pos.y +char_size == height - grav_y || pos.y +char_size > height - grav_y)
    { 
      if(key == 'w')
      {
        jumping = true;
      }
      key = 'l';
    }
  }
}
