void setup() {
  size(800, 800);
}

void draw() {
  background (255, 255, 0);
  int n = 0;
  for (float y = 50; y< width; y+=100) {
    for (float x = 50; x<height; x+=100) {
      fill(0);
      circle(x, y, 50);
      fill(255);
      textSize(24);
      textAlign(CENTER);
      text(n, x, y);
      n++;
    }
  }
}
