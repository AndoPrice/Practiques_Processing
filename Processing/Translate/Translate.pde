void setup(){
  size(800,800);
}

void draw(){
  background(255);
  rectMode(CENTER);
  translate(width/2, height/2);
  rect(0, 0, 200, 200);
  pushMatrix();
  translate(0, -200);
  circle(0,0,200);
  popMatrix();
  


}
