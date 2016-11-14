size(720, 720);
background(0);

textAlign(CENTER,CENTER);
textSize(width/20);
for (int x =1; x<11; x++) {
  for (int y = 1; y<11; y++) {
    text(x*y, width/12*x, height/12*y);
  }
}

