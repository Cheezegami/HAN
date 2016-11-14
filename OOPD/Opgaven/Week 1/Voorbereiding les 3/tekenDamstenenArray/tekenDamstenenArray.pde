int achtergrondKleur = #664411;


void setup() {
  size(500, 500);
  background(achtergrondKleur);
  Damsteen[] damsteen = {(new Damsteen(100, 100, "wit", 100)),(new Damsteen(400, 100, "wit", 100)),(new Damsteen(100, 400, "zwart", 100)),(new Damsteen(400, 400, "zwart", 100)),(new Damsteen(250,100, "wit", 100)),(new Damsteen(250,400,"zwart", 100))};
  
  for (int i = 0; i < damsteen.length; i++) {
  damsteen[i].teken();
  }
}