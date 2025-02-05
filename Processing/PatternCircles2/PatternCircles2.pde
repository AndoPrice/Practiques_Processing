void setup() {
  size(800, 800);
}

void draw() {
  background (255, 255, 0);
  int nc = 0;
  for (float x = 50; x< width; x+=100) {
    for (float y = 50; y<height; y+=100) {
      if (nc%2==0) {
        fill(0);
      } else {
        fill(255);
      }
      circle(x, y, 50);
    }
    nc++;
  }
}
