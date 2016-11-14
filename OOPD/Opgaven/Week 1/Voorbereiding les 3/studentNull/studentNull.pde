class Student {
  String naam;
  int nummer;
  
  Student(String naam, int nummer) {
    this.naam = naam;  
    this.nummer = nummer;
  } //Zonder een this statement zal de verwijzing niet correct verlopen, hierdoor komt er geen verbinding tussen de klasse en het object en zal er dus een verwijzing naar null komen.
}

void setup() {
  Student s = new Student("kareltje", 12);
  println(s.naam);
}