int hoogte = 600;
int breedte = hoogte/9*16;
int leftborder = breedte/9;
int autosize = breedte - leftborder*2;
int achtergrond = color(15,20,15);

void setup() {
  size(breedte, hoogte);
  background(15, 20, 15);
  fill(45, 60, 160);
}

void draw() {
  tekenSlider(leftborder, hoogte/12, autosize, hoogte/4);
  background(achtergrond);
}

void tekenSlider(float x, float y, float breedte, float hoogte) {
  float partsize = breedte/3;
  rect(x, y, breedte, hoogte);

  if (mouseX < x + partsize) {
    if (mousePressed == true) {   
      achtergrond = color(240, 80, 60);
    }
  } else if (mouseX > x + partsize*2) {
    if (mousePressed == true) {   
      achtergrond = color(60, 80, 240);
    }
  } else {
    if (mousePressed == true) {   
      achtergrond = color(70, 240, 70);
    }
  }
}

