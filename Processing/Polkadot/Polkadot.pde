float[] x, y, d;
color[] c;

void setup (){
  size (800,600);
  background(255);
  
    x= new float[100];
    y= new float[100];
    d= new float[100];
    c= new color[100];
    for (int i = 0; i<100; i++){
      x[i] = random(0,width);
      y[i] = random(0,width);
      d[i] = random(10,20);
      c[i] = color(random(255), random(255), random(255));
    }
}

void draw(){
  background(255);
  for(int n=0; n<100; n++){
    fill(c[n]);
    circle (x[n], y[n], d[n]);
  }
}
