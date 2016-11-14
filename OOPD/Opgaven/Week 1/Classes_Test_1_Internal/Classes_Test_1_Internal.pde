class Persoon {
  int leeftijd;
  String naam;
  String woonplaats;
  
  Persoon(int l, String n, String w){
  this.leeftijd = l;
  this.naam = n;
  this.woonplaats = w;
}
}



void start() {
    Persoon herman = new Persoon(28,"Herman de Grote","Arnhem");
    Persoon arnold = new Persoon(68,"Arnold Schwarzenegger","California");
     
    println("Hallo, mijn naam is " + herman.naam + " en ik ben " + herman.leeftijd + " jaar oud, en ik woon in " + herman.woonplaats +"!");
    println("Hallo, mijn naam is " + arnold.naam + " en ik ben " + arnold.leeftijd + " jaar oud, en ik woon in " + arnold.woonplaats +"!");
  }