//Author: Connor Duignan
//Title: Super Soviet Socialist Plumber Hero Brothers

void setup()
{
  size(600,600);
  Characters = new Characters();
  Terrain = new Terrain();
  back = loadImage("Background.png");
}
PImage back;
Terrain Terrain;
Characters Characters;
void draw()
{
  background(back);
  Characters.soviet_hero();
  Terrain.ground();
}
