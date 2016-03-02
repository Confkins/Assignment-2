//Author: Connor Duignan
//Title: Super Soviet Socialist Plumber Hero Brothers

void setup()
{
  size(600,600);
  Terrain = new Terrain();
  Characters = new Characters();
  Menu = new Menu();
  back = loadImage("Background.png");
  //rus_font = loadFont("soviet.ttf");
  //textFont(rus_font);
  menu_select = 1;
}
//Public static required because of errors found when trying to pass values between classses
public static boolean left;
public static int grav_y;
public static boolean collision = false;
public static boolean coll_left = false;
public static PVector pos; 
//perhaps more elegant solutions could be found, but time constraints did not permit experimentation

int menu_select;
PImage back;
PFont rus_font;
Terrain Terrain;
Characters Characters;
Menu Menu;

void draw()
{
  switch(menu_select)
  {
    case 0:
      background(back);
      Terrain.ground();
      Characters.soviet_hero();
      keyPressed();
      break;
    case 1:
      background(back);
      Menu.draw_menu();
      keyPressed();
      break;
    default:
      menu_select = 1;
  }
}

void keyPressed()
{
  if(key == 'b')
  {
    menu_select = 0;
  }
  if(key == 'x')
  {
    menu_select = 1;
  }
}
