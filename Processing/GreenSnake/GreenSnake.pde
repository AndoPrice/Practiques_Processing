int green = 255;
int time = 0;
int diameter = 50;

void setup() {
  size(800, 800);
}

void draw() {
  time = time + 1;
  green = int(128 * (1 + sin(time * 2 * PI / frameRate / 20)));
  diameter = int(50 * (1 + sin( time * 2 * PI / frameRate / 5)));
  

  noStroke();
  fill(0, green, 0, 50);  
  ellipse(mouseX, mouseY, diameter, diameter);
}
