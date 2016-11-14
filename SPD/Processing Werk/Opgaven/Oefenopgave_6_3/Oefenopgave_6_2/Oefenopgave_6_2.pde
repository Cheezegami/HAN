size(721, 721);
background(50, 50, 50);
fill(250,250,50);

int aantalBlokjes=15;
int blokgrootte=width/aantalBlokjes;

for (int x = 0; x<aantalBlokjes; x++) {
  for (int y = 0; y<aantalBlokjes; y++) {
    rect(x*blokgrootte, y*blokgrootte, blokgrootte, blokgrootte);
  }
}

