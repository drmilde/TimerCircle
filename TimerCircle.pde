float r = 10;
float max = 2000;
Timer timer, timer1, timer2;
Kreis k;
Rechteck k1;
Bild img1;

void setup() {
  size(600, 600);
  k = new Kreis(width/2, height/2, r);
  timer = new Timer(max, k, 50, 500);

  k1 = new Rechteck(10, 10, 50, 30);
  timer1 = new Timer(3*1000, k1, 10, 500);

  img1 = new Bild("marylin.jpg", 10, 10, 100, 100);
  timer2 = new Timer(3*1000, img1, 10, 500);
  
  timer.start();
  timer1.start();
  timer2.start();
}

void draw() {
  background(#F253E3);
  timer.tick();
  timer1.tick();
  timer2.tick();
  k.draw();
  k1.draw();
  img1.draw();
}

void mousePressed() {
  timer.start();  
  timer1.start();  
  timer2.start();
}
