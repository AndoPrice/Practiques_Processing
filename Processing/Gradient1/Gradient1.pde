void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  for(float x = 0; x<width; x++){
    for(float y = 0; y<height; y++){
      stroke(255*x/800, 0, 0);
      point(x,y);
    }
  }
}
