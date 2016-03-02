class Characters
{
  int j; //jump timer
  int r;//run timer
  int char_size;//In reference to the game characters not the datatype
  float a = 0; //used in jump vector
  PVector gravity;
  PVector jump;
  Boolean jumping = false;
  PImage hero;
  PImage heroleft;
  PImage herojump;
  PImage herojumpleft;
  PImage herorun;
  PImage herorunleft;
  
  Characters()
  {
    char_size = 59;//It's a square, and helps to fix positioning
    gravity = new PVector (0,3);
    pos = new PVector (width/2-(char_size/2),height/2);
  }
  
  void soviet_hero()
  {
    hero = loadImage("Soviethero.png");
    heroleft = loadImage("Heroleft.png");
    herojump = loadImage("herojump.png");
    herojumpleft = loadImage("herojumpleft.png");
    herorun = loadImage("Sovietherorun1.png");
    herorunleft = loadImage("Sovietrunleft.png");
    
    if(!left)
    {
      if(jumping)
      {
        image(herojump,pos.x,pos.y);
      }
      else
      {
        if(moving)
        {
          if(r<20)
          { 
            image(hero,pos.x,pos.y);  
          }
          else
          {
            image(herorun,pos.x,pos.y);
          }
        }
        else
        {
          image(hero,pos.x,pos.y);
        }
      }
    }
    else
    {
      if(jumping)
      {
        image(herojumpleft,pos.x,pos.y);
      }
      else
      {
        if(moving)
        {
          if(r < 20)
          {
            image(heroleft,pos.x,pos.y);  
          }
          else
          {
            image(herorunleft,pos.x,pos.y);
          }
        }
        else
        {
          image(heroleft,pos.x,pos.y);
        }
      }
    }
    
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
    if(r == 40)
    {
      r = 0;
    }
    r++;
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
