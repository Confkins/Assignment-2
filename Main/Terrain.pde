class Terrain
{ 
  int[][] chunks = new int[320][2];
  boolean check = false;
  int scale = 70;
  int col_gravy;
  int left_col;
  PVector movement;
  PVector move;
  
  Terrain()
  {
    for(int i=0; i < 10; i++)
    {
      chunks[i][0] = 70;//sets first ten values to 70 for regular start
    }
    for(int i = 0; i < 300; i++)
    {
      chunks[i][1] = i+1;//assigns values of 1-300 to array for ease of use
    }
    
    move = new PVector(15,0); 
    movement = new PVector(0,0); 
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
    }//So ground only generated once
 
    for(int i = 0; i <= 300; i++)
    {
      fill(0,0,255);
      rect((chunks[i][1]*scale)+movement.x,height-chunks[i][0],scale,800);
      
      if(chunks[i][1]*scale+movement.x <= (width/2) && (chunks[i][1]*scale+movement.x) + scale >= (width/2))
      {
        grav_y = chunks[i][0];
        col_gravy = chunks[i+1][0];
        left_col = chunks[i-1][0];
      }
      
      if((chunks[i][1]*scale)+movement.x > (width/2) + 10 && (chunks[i][1]*scale)+movement.x < (width/2) + 30 )
      {
        println(col_gravy);
        println(grav_y);
        if(col_gravy > grav_y &&  (height - pos.y - 59) <= col_gravy)
        {
          collision = true;
        }
        else
        {
          collision = false;
        }
      }
      if((chunks[i][1]*scale)+movement.x < (width/2) - 10 && (chunks[i][1]*scale)+movement.x > (width/2) - 30 )
      {
        if(left_col > grav_y && (height - pos.y - 59) < left_col)
        {
          coll_left = true;
        }
        else
        {
          coll_left = false;
        }
      }
    }
    
    keyPressed();
  }
  
  void randomization()
  {
    int pit_edge;
    int pit_chance = 0;
    int chunklength;
    int i = 10;
    int up_down;
    int jump_height = 60;
    boolean chunk_min = false;
    
    while(i < 300)
    {
      if(chunk_min == false)
      {
        chunks[i][0] = chunks[i-1][0];
        chunk_min = true;
      }
      else
      {      
        pit_chance = (int) random(1,10);
        //pit chance
        if(pit_chance == 5)
        {
          pit_edge = chunks[i-1][0];
          
          for(int j = 0; j < 3; j++)
          {
            chunks[i][0] = -5;
            i++;
          }
          
          chunks[i][0] = pit_edge;
          i++;
        }
        //end pit chance
        chunklength = (int) random(1,4);
        
        if(chunklength == 2)  
        {
          up_down = (int) random(1,6);
          if(up_down == 2 || up_down == 3 || up_down == 4)
          {
            chunks[i][0] = (int) random(chunks[i-1][0],(chunks[i-1][0])+jump_height);
            chunk_min = false;
          }
          else
          {
            chunks[i][0] = (int) random((chunks[i-1][0])-jump_height,chunks[i-1][0]);
            chunk_min = false;
          }
        } 
        else
        {
         chunks[i][0] = chunks[i-1][0];
        }
      }
      //fixes random biases
      if(chunks[i][0] < 0)
      {
        chunks[i][0] += jump_height;
      }
      else if(chunks[i][0] > 500)
      {
        chunks[i][0] -= jump_height;
      }
      else
      {
        i++;
      }
    }//end while
  }//end method
  
  void keyPressed()
  {
    if(!collision)
    {
      if(key == 'd')
      {
        movement.sub(move);
        key = 'q';
        left = false;
      }
    }
    if(!coll_left)
    {
      if(key == 'a')
      {
        movement.add(move);
        key = 'q';
        left = true;
      }
    }
  }
}//end class
