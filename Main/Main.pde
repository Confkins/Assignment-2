//Author: Connor Duignan
//Title: Super Soviet Socialist Plumber Hero Brothers

void setup()
{
  size(600,600);
    Terrain = new Terrain();
  Characters = new Characters();
  Characters.setup();
  back = loadImage("Background.png");
}
public static int grav_y;
PImage back;
Terrain Terrain;
Characters Characters;
void draw()
{
  background(back);
  Terrain.ground();
  println(grav_y);    
  Characters.soviet_hero();
}
