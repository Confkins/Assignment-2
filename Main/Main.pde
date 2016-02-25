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
PImage back;
Terrain Terrain;
Characters Characters;
void draw()
{
  background(back);
  Terrain.ground();
  Characters.soviet_hero();
}
