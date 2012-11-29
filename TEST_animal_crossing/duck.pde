class duck {

  //properties
  float xpos;
  float ypos;
  int width = 100;
  int height = 75;
  float speed;

  //setup
  duck(float x, float y, float s) {
    xpos = x;
    ypos = y;
    speed = s;
  }//end of setup

  void draw() {
    image(images2[frame], xpos, ypos);
    xpos+=speed;

    //println(ypos);

    if (xpos>700) {
      reset();
    }
  }//end of draw

  void reset() {
       ypos = random(150, 350);
    xpos = random(-400, -200);
  }

  boolean hitTest(rcar p1) {
    return(p1.xpos<xpos+width && p1.xpos+p1.width>xpos && p1.ypos<ypos+height && p1.ypos+p1.height>ypos);
    
   
  }
  
   boolean hitTest2(ocar2 p1) {
    return(p1.xpos<xpos+width && p1.xpos+p1.width>xpos && p1.ypos<ypos+height && p1.ypos+p1.height>ypos);
  }
  
}//end of class

