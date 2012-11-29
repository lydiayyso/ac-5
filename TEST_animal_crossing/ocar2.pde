class ocar2 {

  float xpos;
  float ypos;
  int width = 35;
  int height = 35;
  float yspeed;
    float speed;
   


  //setup
  ocar2(float x, float y, float s) {
    xpos = x;
    ypos = y;
    yspeed = s;
   float pre_pause_speed  = 0;
    
boolean redd;
boolean yellow;
boolean greenn;

  }//end of setup

  void draw() {
    image(ocar2, xpos, ypos);
    ypos= ypos+yspeed;
// println(xpos);

    if (ypos> 600) {
      reset();
    }
  }//end of draw


    void reset() {
      xpos = random(70, 200);
      ypos = random(-350, -100);
      
      
      speed = random(4,15); 
      
  }
}


void ppause() 
{
if (speed_x == 0 && speed_y == 0) {
speed_x = pre_pause_speed[0];
speed_y = pre_pause_speed[1];
} 

else {
pre_pause_speed[0] = speed_x;
pre_pause_speed[1] = speed_y;
speed_x = 0;
speed_y = 0;
}
} 


