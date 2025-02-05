void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background (255, 255, 0);
  int nc = 0;
  int nf= 0;
  for (float x = 50; x< width; x+=100) {
    for (float y = 50; y<height; y+=100) {
      if (nc%3==1) {
        fill(0);
      } else if (nc%3==2) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }
      if (nf%2==1) {
        circle(x, y, 50);
      } else {
        rect(x, y, 50, 50);
      }
      nf++;
    }
    nc++;
  }
}
