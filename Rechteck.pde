class Rechteck implements IAnimierbar {
  float x, y, w, h;
  
  public Rechteck(float x, float y, float w, float h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  public void draw() {
    pushStyle();
    rectMode(CENTER);
    rect(x,y,w,h);
    popStyle();
  }
  
  public void update(float time, float mintime, float maxtime, float min, float max) {
    this.x = map(time, mintime, maxtime, min, max);
    this.w = map(time, mintime, maxtime, 30, 100);
  }
}
