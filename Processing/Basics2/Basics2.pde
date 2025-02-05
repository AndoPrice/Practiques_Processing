void setup(){
  size(700, 500);
  

}

color colorPrefe =color(0,255,255);

void draw(){
  background(255);
  //arc(width/2, height/2, 400, 400, PI/4, 7*PI/4, PIE); 
  //També es pot fer radians(degrees)
  //noFill();
  fill(colorPrefe);
  strokeWeight(20);
  stroke(0,0,255);
  strokeJoin(BEVEL);
  //strokeCap(ROUND);
  arc(width/2, height/2, 400, 400, PI/4, 7*PI/4, PIE);

}
