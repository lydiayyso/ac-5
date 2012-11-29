class rcar {

  float xpos;
  float ypos;
  int width = 35;
  int height = 35;
  float yspeed;
  float speed;

  //setup
  rcar(float x, float y, float s) {
    xpos = x;
    ypos = y;
    yspeed = s;
    
    boolean redd;
boolean yellow;
boolean greenn;

  }//end of setup

  void draw() {
    image(rcar, xpos, ypos);
    ypos= ypos-yspeed;
    
  //  println(ypos);
    
    if (ypos <-100) {
      reset();
    }
  }//end of draw

  void reset() {
      xpos = random(350, 500);
      ypos = random(350, 800);
      
      
      speed = random(4,15); 
  }
}


