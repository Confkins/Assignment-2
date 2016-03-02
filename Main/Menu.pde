class Menu
{
  Menu()
  {
    //default
  }
  void draw_menu()
  {
    fill(255,50,70);
    rect(100,100,width-200,height-200);
    fill(255,215,0);
    textSize(20);
    text("Welcome komrade, to:",width/2 - 100,150);
    text("SUPER",width/2 - 50,180);
    text("SOCIALIST",width/2 - 50,210);
    text("SOVIET",width/2 - 50,240);
    text("PLUMBER",width/2 - 50,270);
    text("HERO",width/2 - 50,300);
    text("BROS.",width/2 - 50,330);
    text("Press 'B' to begin!",width/2 - 100,400);
  }
}
