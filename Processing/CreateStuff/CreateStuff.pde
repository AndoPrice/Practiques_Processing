float x, y, d;
color c;

void setup() {
  size(800, 800);
  background (255);
}

void createStuff() {
  x= mouseX;
  y= mouseY;
  d= random(10, 50);
  c = color(random (255), random (255), random (255));
  if (mouseButton == LEFT) {
    c = color(random(255), 0, 0);
    fill(c);
    noStroke();
    circle(x, y, d);
  } else if (mouseButton == CENTER) {
    c = color(0, random(255), 0);
    fill(c);
    noStroke();
    rect(x, y, d, d);
  } else if (mouseButton == RIGHT) {
    c = color(0, 0, random(255));
    fill(c);
    noStroke();
    triangle(x, y,x+ d, y+d, x-d, y-d);
  }
}
  void draw() {
    if (mousePressed) {
      createStuff();
     
    }
  }
