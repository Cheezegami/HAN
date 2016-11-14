int hoogte = 600;
int breedte = hoogte/9*16;
int leftborder = breedte/9;
int autosize = breedte - leftborder*2;

void setup() {
  size(breedte, hoogte);
  background(15, 20, 15);
  fill(45, 60, 160);
}

void draw() {
  background(15, 20, 15);
  tekenSlider(leftborder, hoogte/12, autosize, hoogte/4);
}

void tekenSlider(float x, float y, float breedte, float hoogte) {
  float partsize = breedte/3;
  rect(x, y, breedte, hoogte);

  if (mouseX < x + partsize) {
    fill(15, 20, 15);
    rect(x, y, breedte, hoogte);
    fill(250, 120, 120);
    rect(x, y+y*4, partsize, hoogte/4);
    if (mousePressed == true) {   
      fill(240, 80, 60);
      rect(x, y, partsize, hoogte);
    }
  } else if (mouseX > x + partsize*2) {
    fill(15, 20, 15);
    rect(x, y, breedte, hoogte);
    fill(120, 120, 250);
    rect(x+partsize*2, y+y*4, partsize, hoogte/4);
    if (mousePressed == true) {   
      fill(60, 80, 240);
      rect(x+partsize*2, y, partsize, hoogte);
    }
  } else {
    fill(15, 20, 15);
    rect(x, y, breedte, hoogte);  
    fill(120, 250, 120);
    rect(x+partsize, y+y*4, partsize, hoogte/4);
    if (mousePressed == true) {   
      fill(70, 240, 70);
      rect(x+partsize, y, partsize, hoogte);
    }
  }
}

