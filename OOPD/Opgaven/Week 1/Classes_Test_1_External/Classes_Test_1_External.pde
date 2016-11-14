class Persoon {
  int leeftijd;
  String naam;
  String woonplaats;
  
  Persoon(){}
}



void start() {
    Persoon herman = new Persoon();
    herman.naam = "Herman de Grote";
    herman.leeftijd = 28;
    herman.woonplaats = "Arnhem";
    
    Persoon arnold = new Persoon();
    arnold.naam = "Arnold Schwazzenegger";
    arnold.leeftijd = 68;
    arnold.woonplaats = "United States";
    
    
    println("Hallo, mijn naam is " + herman.naam + " en ik ben " + herman.leeftijd + " jaar oud, en ik woon in " + herman.woonplaats +"!");
    println("Hallo, mijn naam is " + arnold.naam + " en ik ben " + arnold.leeftijd + " jaar oud, en ik woon in " + arnold.woonplaats +"!");
  }