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
  Boolean left;
  PImage hero;
  PImage heroleft;
  
  Characters()
  {
    char_size = 59;//It's a square, and helps to fix positioning
    gravity = new PVector (0,3);
    pos = new PVector (width/2-(char_size/2),height/2);
    left = false;
  }
  
  void soviet_hero()
  {
    hero = loadImage("Soviethero.png");
    heroleft = loadImage("Heroleft.png");
    
    if(!left)
    {
      image(hero,pos.x,pos.y);  
    }
    else
    {
      image(heroleft,pos.x,pos.y);
    }
    
    jump = new PVector (0,4);

    keyPressed();
    println("seamus is da bes!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
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
   if(key == 'z')
   {
     left = true;
   }
   if(key == 'x')
   {
      left = false; 
   }
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
