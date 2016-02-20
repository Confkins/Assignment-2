//Author: Connor Duignan
//Title: Super Soviet Socialist Plumber Hero Brothers

void setup()
{
  size(600,600);
  Characters = new Characters();
  Terrain = new Terrain();
}
Terrain Terrain;
Characters Characters;
void draw()
{
  background(230,20,20);
  Characters.soviet_hero();
}
