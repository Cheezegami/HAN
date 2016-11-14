void setup() {
  size(800, 600);
  background(25);
  int wBMarge = 50; // Hiermee wordt de marge van de breedte van het window binnen het scherm bepaald. //
  int wHMarge = 80; // Hiermee wordt de marge van de breedte van het window binnen het scherm bepaald. //
  int rMarge = 30; // Hiermee wordt de afstand tussen de robots bepaald. // 
  int aantalrobots = 14;
  int[] robotpositie = new int[aantalrobots]; // Hiermee wordt het aantal robots bepaald. //
  int robotBreedte = wBMarge/aantalrobots-rMarge;
  int dobbelstenen = 2; // Hiermee wordt het aantal dobbelstenen bepaald. //
  TekenWindow(wBMarge, wHMarge);
  TekenRobots(rMarge, aantalrobots, wBMarge, wHMarge, robotBreedte, dobbelstenen, robotpositie);
}

void TekenWindow(int wBMarge, int wHMarge) { // Met deze functie wordt de window geinitialiseerd. //
  fill(100);
  stroke(255);
  rect(wBMarge, wHMarge, width-wBMarge*2, height-wHMarge*2);
}

void TekenRobots(int rMarge, int aantalrobots, int wBMarge, int wHMarge, int robotBreedte, int dobbelNummer, int[] robotpositie) { //Met deze functie worden de robots op het scherm getekend. //
  stroke(255);
  while (aantalrobots>0) {
    fill(random(255), random(255), random(255));
    triangle(wBMarge*aantalrobots, height-wHMarge-robotpositie[aantalrobots-1], wBMarge*aantalrobots-robotBreedte/2, height-wHMarge+robotBreedte-robotpositie[aantalrobots-1], wBMarge*aantalrobots-robotBreedte, height-wHMarge-robotpositie[aantalrobots-1]);
    if (keyPressed) {
      robotpositie[aantalrobots-1] = int(robotpositie[aantalrobots-1]+dobbelNummer*(random(6)+1));
    }
    aantalrobots = aantalrobots-1;
  }
}