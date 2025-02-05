void setup(){
  size(800, 600);
}

void draw(){
  background (255);
  float d = dist(0,0, mouseX, mouseY);
  println(d);
  strokeWeight(d/100);
  line(0, 0, mouseX, mouseY);
}
