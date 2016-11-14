size(501, 501);
ellipseMode(CORNER);

int[][] dambord = {
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 
  {0, 1, 0, 1, 0, 1, 0, 1, 0, 1}, 
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 
  {0, 1, 0, 1, 0, 1, 0, 1, 0, 1}, 
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 
  {0, 1, 0, 1, 0, 1, 0, 1, 0, 1}, 
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 
  {0, 1, 0, 1, 0, 1, 0, 1, 0, 1}, 
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 
  {0, 1, 0, 1, 0, 1, 0, 1, 0, 1}
};

int aantalBlokjes=dambord.length;
int blokgrootte=width/aantalBlokjes;

int[][] damstenen ={
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 
  {0, 1, 0, 1, 0, 1, 0, 1, 0, 1}, 
  {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}, 
  {0, 1, 0, 1, 0, 1, 0, 1, 0, 1}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {2, 0, 2, 0, 2, 0, 2, 0, 2, 0}, 
  {0, 2, 0, 2, 0, 2, 0, 2, 0, 2}, 
  {2, 0, 2, 0, 2, 0, 2, 0, 2, 0}, 
  {0, 2, 0, 2, 0, 2, 0, 2, 0, 2}, 
};

for (int x = 0; x<aantalBlokjes; x++) {
  for (int y = 0; y<aantalBlokjes; y++) {
    if (dambord[y][x] == 1) {
      fill(50, 50, 125);
      rect(x*blokgrootte, y*blokgrootte, blokgrootte, blokgrootte);
    } else {
      fill(245, 205, 150);
      rect(x*blokgrootte, y*blokgrootte, blokgrootte, blokgrootte);
    }
  }
}

for (int x = 0; x<aantalBlokjes; x++) {
  for (int y = 0; y<aantalBlokjes; y++) {
    if (damstenen[y][x] == 2) {
      fill(240, 220, 200);
      ellipse(x*blokgrootte, y*blokgrootte, blokgrootte, blokgrootte);
    } else  if (damstenen[y][x] == 1) {
      fill(30, 20, 10);
      ellipse(x*blokgrootte, y*blokgrootte, blokgrootte, blokgrootte);
    }
  }
}