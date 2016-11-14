size(720, 720);
background(0);

textAlign(CENTER, CENTER);
textSize(width/20);
for (int y = 1; y<11; y++) {
  text(y, width/12, height/12*y);
}
