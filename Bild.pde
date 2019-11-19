class Bild extends Rechteck implements IAnimierbar {
  PImage bild = null;


  public Bild(String name, float x, float y, float w, float h) {
    super(x, y, w, h);
    bild = loadImage(name);
  }

  public void draw() {
    pushStyle();
    if (bild != null)
      image(bild, x, y, w, h);
    popStyle();
  }

  public void update(float time, float mintime, float maxtime, float min, float max) {
    this.y = map(time, mintime, maxtime, min, max);
  }
}
