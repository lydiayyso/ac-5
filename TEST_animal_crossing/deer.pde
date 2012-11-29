class deer {

  //properties
  float xpos;
  float ypos;
  int width = 100;
  int height = 75;
  float speed;

  //setup
  deer(float x, float y, float s) {
    xpos = x;
    ypos = y;
    speed = s;
  }//end of setup

  void draw() {
    image(images[frame], xpos, ypos);
    xpos+=speed;

println(ypos);

    if (xpos>600) {
      reset();
    }
  }//end of draw

  void reset() {
    ypos = random(100, 250);
    xpos = random(-900, -500);
  }

  boolean hitTest(rcar p1) {
    return(p1.xpos<xpos+width && p1.xpos+p1.width>xpos && p1.ypos<ypos+height && p1.ypos+p1.height>ypos);
  }

   boolean hitTest2(ocar2 p1) {
    return(p1.xpos<xpos+width && p1.xpos+p1.width>xpos && p1.ypos<ypos+height && p1.ypos+p1.height>ypos);
  
  }

}
