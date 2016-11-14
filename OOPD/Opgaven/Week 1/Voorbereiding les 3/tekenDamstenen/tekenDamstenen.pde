int achtergrondKleur = #664411;

class Damsteen {
  int xpos;
  int ypos;
  String kleurWaarde;
  int diameter;
  int echteKleur;
  
  
  private Damsteen(int xpos, int ypos, String kleurWaarde, int diameter){
    this.xpos=xpos;
    this.ypos=ypos;
    this.kleurWaarde=kleurWaarde;
    this.diameter=diameter;
    if(kleurWaarde == "zwart")this.echteKleur = #000000;
    if(kleurWaarde == "wit")this.echteKleur = #FFFFFF;

  }
}

void setup() {
 size(500,500);
 background(achtergrondKleur);
 Damsteen witDamsteen = new Damsteen(100,100,"wit",100);
 Damsteen zwartDamsteen = new Damsteen(400,400,"zwart",100);
 fill(witDamsteen.echteKleur);
 ellipse(witDamsteen.xpos,witDamsteen.ypos,witDamsteen.diameter,witDamsteen.diameter);
 fill(zwartDamsteen.echteKleur);
 ellipse(zwartDamsteen.xpos,zwartDamsteen.ypos,zwartDamsteen.diameter,zwartDamsteen.diameter);
}