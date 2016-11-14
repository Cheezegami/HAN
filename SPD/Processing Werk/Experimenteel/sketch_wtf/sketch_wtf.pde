void setup() {
  size(400, 400);
  surface.setResizable(true);
}

void draw() {
  line(100, 100, width-100, height-100);
}

void keyPressed() {
  background(random(255),random(255),random(255));
  stroke(random(255),random(255),random(255));
  surface.setSize(round(random(100, 1200)), round(random(100, 1000)));
}