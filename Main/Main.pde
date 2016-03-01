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
//Public static required because of errors found when trying to pass values between classses
public static boolean left;
public static int grav_y;
public static boolean collision = false;
public static boolean coll_left = false;
public static int col_gravy;

PImage back;
Terrain Terrain;
Characters Characters;

void draw()
{
  background(back);
  Terrain.ground();
  Characters.soviet_hero();
}
