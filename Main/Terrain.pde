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
    
  }
  randomization()
  {
  }
}
