class Kreis implements IAnimierbar {
  float x;
  float y;
  float radius;
  
  public Kreis(float x,float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  public void draw() {
    pushStyle();
    ellipse(x,y,radius, radius);
    popStyle();
  }
  
  // implementieren Interface
  void update(float time, float mintime, float maxtime, float min, float max) {
    this.radius = map(time, mintime, maxtime, min, max);
  }
}
