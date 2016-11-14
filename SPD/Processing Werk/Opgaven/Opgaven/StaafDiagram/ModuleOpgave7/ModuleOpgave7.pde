void setup() {
  size(1200, 600);
  textSize(20);
  background(0);


  float[] cijfers = loadFloats("cijfers_xxl.txt");
  int[] cijferscat = berekenCats(cijfers);
  int cijfersAantal = cijfers.length;
  float cijfersMax = max(cijfers);
  float cijfersMin = min(cijfers);
  float cijfersGem = gemCijfers(cijfers);
  int cijfersVoldoendes = voldoendes(cijfers);
  int cijfersOnvoldoendes = onvoldoendes(cijfers);

  text("Aantal Cijfers = " + cijfersAantal, 10, 20);
  text("Hoogste Cijfer = " + cijfersMax, 10, 45);
  text("Laagste Cijfer = " + cijfersMin, 10, 70);
  text("Gemiddelde Cijfer = "+ cijfersGem, 10, 95);
  text("Aantal Voldoendes = "+ cijfersVoldoendes, 10, 120);
  text("Aantal Onvoldoendes = " + cijfersOnvoldoendes, 10, 145);

  tekenStaven(cijferscat);
}
int[] berekenaantallen (float[] cijfers) { //Hiermee wordt het totaal aantal cijfers berekend.
  int[]aantallen = new int[10];
  for (int i =0; i<cijfers.length; i++) {
    int range = ceil(cijfers[i]);
    aantallen[range -1]++;
  }
  return aantallen;
}
int[] berekenCats(float[] cijfers) { //Hiermee worden de cijfers in tien verschillende categorieën opgedeeld.
  int[] cijfercats = new int[11];

  for (int i = 0; i < cijfers.length; i++) {
    if (ceil(cijfers[i]) < cijfercats.length) {
      cijfercats[ceil(cijfers[i])]++;
    }
  }

  return cijfercats;
}



float gemCijfers(float[] hoeveelheidCijfers) { //Hiermee wordt het gemiddelde van de cijfers berekent, eerst wordt de totale som van alle cijfers berekent, daarna wordt de som gedeeld door het totaal aantal cijfers.//
  float totaal = 0;
  for (int i = 0; i < hoeveelheidCijfers.length; i++) {
    totaal += hoeveelheidCijfers[i];
  }
  return totaal / hoeveelheidCijfers.length;
}

int voldoendes(float[] cijfers) { //Hiermee wordt het aantal voldoendes bepaald, een cijfers is voldoende wanneer het 5.5 of hoger is//
  int voldoendes = 0;
  for (int i = 0; i <cijfers.length; i++) {
    if (cijfers[i] >= 5.5) {
      voldoendes++;
    }
  }
  return voldoendes;
}
int onvoldoendes(float[] cijfers) { //Hetzelfde alsvoldoendes maar dan wanneer het cijfers lager dan 5.5 is.
  int onvoldoendes = 0;
  for (int i = 0; i <cijfers.length; i++) {
    if (cijfers[i] < 5.5) {
      onvoldoendes++;
    }
  }
  return onvoldoendes;
}