PImage img, img1, img2, img3;
String txt, txt1, txt2, txt3;
PFont font, font1, font2, font3;

int numImage = 1, numText = 1, numFont = 1;
boolean random = false;

void setup() {
  size(1000, 800);
  background(255);

  imageMode(CENTER);

  img1 = loadImage("Guitar.png");
  img2 = loadImage("Saxophone.png");
  img3 = loadImage("MusicNote.png");

  txt1 = "Music";
  txt2 = "is";
  txt3 = "life";

  font1 = createFont("Musicals.ttf", 100);
  font2 = createFont("Musicality.ttf", 100);
  font3 = createFont("Bravecho.otf", 100);

  font = font1;
  img = img1;
  txt = txt1;
}

void draw() {
  parameters();
  addStuff();
}

void keyPressed(){
  if (key == 'x'){
    blank();
  }
  else{
    parameters();
  }
}

void parameters() {
  if (key == 'r') {
    random = true;
  }
  else if (key == 'f') {
    random = false;
  }
  
}

void blank(){
  background(255);
  print("f");
}

void mousePressed() {
  addStuff();
}

void addStuff() {
  if (mouseButton==LEFT) {
    addImage();
  } else {
    addText();
  }
}

void addImage() {
  int n;
  float x, y, a, s=20;
  if (random) {
    n = floor(random(3));
    x = random(width);
    y = random(height);
    s = random(0.2, 0.5);
    a = random(0, TWO_PI);
  } else {
    n = numImage;
    x = mouseX;
    y = mouseY;
    s = 0.5;
    a = random(0, TWO_PI);
  }
  switch(n) {
  case 0:
    img = img1;
    break;
  case 1:
    img = img2;
    break;
  case 2:
    img = img3;
    break;
  }
  translate(x, y);
  rotate(a);
  scale(s, s);
  image(img, x, y);
}

void addText() {
  int n = 0;
  int f = 0;
  float x, y, s = 20;
  if (random) {
    n = floor(random(3));
    f = floor(random(3));
    x = random(width);
    y = random(height);
    s = random(20, 50);
  } else {
    n = numText;
    x = mouseX;
    y = mouseY;
  }
  switch(n) {
  case 0:
    txt = txt1;
    break;
  case 1:
    txt = txt2;
    break;
  case 2:
    txt = txt3;
    break;
  }

  switch(f) {
  case 0:
    font = font1;
    break;
  case 1:
    font = font2;
    break;
  case 2:
    font = font3;
    break;
  }

  translate(x, y);
  fill(random(255), random(255), random(255));
  textFont(font);
  textSize(s);
  text(txt, 0, 0);
}
