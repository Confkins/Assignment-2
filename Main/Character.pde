class Characters
{
  int char_size;//In reference to the game characters not the datatype
  //PVector gravity = new PVector (250,250);
  PImage hero;
  Characters()
  {
    char_size = 60;//It's a square
  }
  void soviet_hero()
  {
    hero = loadImage("Soviethero.jpg");
    image(hero,0,0);
  }
}
