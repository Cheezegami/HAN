int Ledpin1 = 6;
int Ledpin2 = 7;
int Ledpin3 = 8;
int Ledpin4 = 9;
int Ledpin5 = 10;
int Ledpin6 = 11;
int Ledpin7 = 12;
int Ledpin8 = 13;
int snelheid = 1000;

void setup() {
  pinMode(Ledpin1, OUTPUT);
  pinMode(Ledpin2, OUTPUT);
  pinMode(Ledpin3, OUTPUT);
  pinMode(Ledpin4, OUTPUT);
  pinMode(Ledpin5, OUTPUT);
  pinMode(Ledpin6, OUTPUT);
  pinMode(Ledpin7, OUTPUT);
  pinMode(Ledpin8, OUTPUT);
  Serial.begin(9600);
}

void Loop() {

    
    digitalWrite(Ledpin1, snelheid);
    digitalWrite(Ledpin2, snelheid);
    digitalWrite(Ledpin3, snelheid);
    digitalWrite(Ledpin4, LOW);
    digitalWrite(Ledpin5, HIGH);
    digitalWrite(Ledpin6, LOW);
    digitalWrite(Ledpin7, HIGH);
    digitalWrite(Ledpin8, LOW);
    delay(1000);
    digitalWrite(Ledpin1, LOW);
    digitalWrite(Ledpin2, HIGH);
    digitalWrite(Ledpin3, LOW);
    digitalWrite(Ledpin4, HIGH);
    digitalWrite(Ledpin5, LOW);
    digitalWrite(Ledpin6, HIGH);
    digitalWrite(Ledpin7, LOW);
    digitalWrite(Ledpin8, LOW);
    delay(1000);
  }
}

