int hoogte = 600;
int breedte = hoogte/9*16;
int leftborder = breedte/9;
int autosize = breedte - leftborder*2;

void setup() {
  size(600, 300);
  background(15, 20, 15);
}

void draw() {
  background(15, 20, 15);
  tekenSlider(leftborder, hoogte/12, autosize, hoogte/4);


}

void tekenSlider(float x, float y, float breedte, float hoogte) {
  float partsize = breedte/3;
  fill(100);
  rect(x,y*5,partsize*3,hoogte/4);
  rect(x,height-y*2,partsize*3,hoogte/4);
  if (mouseY < height/2) {
    if (mouseX < x + partsize) {
      fill(250, 120, 120);
      rect(x, y+y*4, partsize, hoogte/4);
      if (mousePressed == true) {   
        fill(240, 80, 60);
        rect(x, y, partsize, hoogte);
      }
    } else if (mouseX > x + partsize*2) {
      fill(120, 120, 250);
      rect(x+partsize*2, y+y*4, partsize, hoogte/4);
      if (mousePressed == true) {   
        fill(60, 80, 240);
        rect(x+partsize*2, y, partsize, hoogte);
      }
    } else {
      fill(120, 250, 120);
      rect(x+partsize, y+y*4, partsize, hoogte/4);
      if (mousePressed == true) {   
        fill(70, 240, 70);
        rect(x+partsize, y, partsize, hoogte);
      }
    }
    } else if (mouseY > height/2)  {
      if (mouseX < x + partsize) {
        fill(250, 120, 250);
        rect(x, height-y*2, partsize, hoogte/4);
        if (mousePressed == true) {   
          fill(240, 80, 240);
          rect(x, height/2, partsize, hoogte);
        }
      } else if (mouseX > x + partsize*2) {
        fill(120, 250, 250);
        rect(x+partsize*2, height-y*2, partsize, hoogte/4);
        if (mousePressed == true) {   
          fill(60, 240, 240);
          rect(x+partsize*2, height/2, partsize, hoogte);
        }
      } else {
        fill(250, 250, 120);
        rect(x+partsize, height-y*2, partsize, hoogte/4);
        if (mousePressed == true) {   
          fill(240, 240, 70);
          rect(x+partsize, height/2, partsize, hoogte);
        }
      }
    }
  }