void setup(){
  size(800, 800);
  colorMode(HSB);
}

void draw(){
  background(255);
  for(float angle = 0; angle<TWO_PI; angle+=0.01){
    float x = width/2 + 300*cos(angle);
    float y = height/2 + 300*sin(angle);
    noStroke(); fill(angle/TWO_PI*255, 255, 255);
    circle(x,y,10);
  }
}
