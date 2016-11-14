size(721, 721);
background(45, 35, 50);
fill(220, 250, 200);
int[] zwart = {
  1, 0, 1, 0, 1, 0, 1, 0, 1, 0
};

int aantalBlokjes=10;
int blokgrootte=width/aantalBlokjes;

for (int x = 0; x<aantalBlokjes; x++) {
  for (int y = 0; y<aantalBlokjes; y++) {
    if (zwart[x] == 1) {
      if (zwart[y] == 1) {
        rect(x*blokgrootte, y*blokgrootte, blokgrootte, blokgrootte);
        rect(x*blokgrootte+blokgrootte, y*blokgrootte+blokgrootte, blokgrootte, blokgrootte);
      }
    }
  }
}

