class Terrain
{ 
  int[][] chunks = new int[300][1];
  Terrain()
  {
    for(int i=0; i < 10; i++)
    {
      chunks[i][0] = 50;//sets first ten values to 50 for regular start
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
    randomization();    
  }
  void randomization()
  {
    int chunklength;
    int i = 10;
    int y_set;
    int old_y;
    int jump_height = 100;
    boolean chunk_min = false;
    y_set = chunks[10][0];
    
    while(i < 300)
    {
      chunks[i][0] = random(chunks[i-1][0],jump_height);
      if(!chunk_min)
      {
        i++;
        chunks[i][0] = chunks[i-1][0];
        chunk_min = true;
      }
      else
      {
         chunklength = random(1,5);
         if(chunklength == 1)
         {
           
         } 
      }
    }
  }
}
