
class Damsteen {
  int xpos;
  int ypos;
  String kleurWaarde;
  int diameter;
  int echteKleur;

  private Damsteen(int xpos, int ypos, String kleurWaarde, int diameter) {
    this.xpos=xpos;
    this.ypos=ypos;
    this.kleurWaarde=kleurWaarde;
    this.diameter=diameter;
    if (kleurWaarde == "zwart")this.echteKleur = #000000;
    if (kleurWaarde == "wit")this.echteKleur = #FFFFFF;
  }
  void teken() {
    fill(echteKleur);
    ellipse(xpos, ypos, diameter, diameter);
  }
}