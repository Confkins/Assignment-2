class Terrain
{ 
  int[][] chunks = new int[300][2];
  boolean check = false;
  Terrain()
  {
    for(int i=0; i < 10; i++)
    {
      chunks[i][0] = 50;//sets first ten values to 50 for regular start
    }
    for(int i = 0; i < 300; i++)
    {
      chunks[i][1] = i+1;
    }
  }
  void ground()
  {
    /*
      The idea here is to seperate the ground into
      easy workable chunks so varied terrain is easier
      As the player "moves", it will actually be the terrain
      moving. It will hopefully be randomized in the finished
      version, but may have to be curtailed for playability.
    */
    
    if(check == false)
    {
    randomization();  
    check = true;
    }
    for(int i = 0; i < 300; i++)
    {
      println(chunks[i][0]);
    }
  }
  void randomization()
  {
    int pit_chance = 0;
    int chunklength;
    int i = 10;
    int up_down;
    int y_set;
    int  old_y;
    int jump_height = 30;
    boolean chunk_min = false;
    y_set = chunks[10][0];
    
    while(i < 300)
    {
      //chunks[i][0] = random(chunks[i-1][0],jump_height);
      if(chunk_min == false)
      {
        chunks[i][0] = chunks[i-1][0];
        chunk_min = true;
      }
      else
      {
        chunklength = (int) random(1,4);
        if(chunklength == 2)  
        {
          up_down = (int) random(1,4);
          if(up_down == 2)
          {
            chunks[i][0] = (int) random(chunks[i-1][0],jump_height);
            chunk_min = false;
          }
          else if(up_down == 3)
          {
            chunks[i][0] = (int) random(chunks[i-1][0],-jump_height);
            chunk_min = false;
          }
        } 
        else
        {
         chunks[i][0] = chunks[i-1][0];
        }
      }
      i++;
    }//end while
  }//end method
}//end class
