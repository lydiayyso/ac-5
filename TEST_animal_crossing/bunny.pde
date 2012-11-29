class bunny {

  //properties
  float xpos;
  float ypos;
  int width = 100;
  int height = 75;
  float speed;

  //setup
  bunny(float x, float y, float s) {
    xpos = x;
    ypos = y;
    speed = s;
  }//end of setup

  void draw() {
    image(images3[frame], xpos, ypos);
    xpos-=speed;
    
    //println(xpos);

  if (xpos< -100) {
      reset();
    }
  }//end of draw

  void reset() {
    ypos = random(160,270);
    xpos = random(900, 1200);
  }

  boolean hitTest(rcar p1) {
    return(p1.xpos<xpos+width && p1.xpos+p1.width>xpos && p1.ypos<ypos+height && p1.ypos+p1.height>ypos);
  }
  
   boolean hitTest2(ocar2 p1) {
    return(p1.xpos<xpos+width && p1.xpos+p1.width>xpos && p1.ypos<ypos+height && p1.ypos+p1.height>ypos);
  }
}//end of class

