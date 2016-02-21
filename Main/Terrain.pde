class Terrain
{ 
  float[][] chunks = new float[300][1];
  boolean check = false;
  Terrain()
  {
    for(int i=0; i < 10; i++)
    {
      chunks[i][0] = 10;//sets first ten values to 50 for regular start
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
    float pit_chance = 0;
    float chunklength;
    int i = 10;
    float up_down;
    float y_set;
    float old_y;
    float jump_height = 30;
    boolean chunk_min = false;
    y_set = chunks[10][0];
    
    while(i < 300)
    {
      chunks[i][0] = random(chunks[i-1][0],jump_height);
      if(!chunk_min)
      {
        chunks[i][0] = chunks[i-1][0];
        chunk_min = true;
      }
      else
      {
        chunklength = random(1,4);
        if(chunklength == 1)  
        {
          up_down = random(1,3);
          if(up_down == 1)
          {
            chunks[i][0] = random(chunks[i-1][0],jump_height);
            chunk_min = false;
          }
          else if(up_down == 2)
          {
            chunks[i][0] = random(chunks[i-1][0],-jump_height);
            chunk_min = false;
          }
          else
          {
            chunks[i][0] = chunks[i-1][0];
          }
        } 
        i++;
      }
    }//end while
  }//end method
}//end class
