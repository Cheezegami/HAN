int Ledpin1 = 6;
int Ledpin2 = 7;
int Ledpin3 = 8;
int Ledpin4 = 9;
int Ledpin5 = 10;
int Ledpin6 = 11;
int Ledpin7 = 12;
int Ledpin8 = 13;

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

void loop() {
  float i = 1;
  float ii = 2;
  while (i >= 1) {
    while (ii >= 1) {
      digitalWrite(Ledpin1, LOW);
      digitalWrite(Ledpin2, LOW);
      digitalWrite(Ledpin3, HIGH);
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
      ii = ii - 1;
    }
    i = i - 4;
  }
  while (i <= 0) {
    while (ii < 2) {
      digitalWrite(Ledpin1, HIGH);
      digitalWrite(Ledpin2, LOW);
      digitalWrite(Ledpin3, HIGH);
      digitalWrite(Ledpin4, LOW);
      digitalWrite(Ledpin5, HIGH);
      digitalWrite(Ledpin6, LOW);
      digitalWrite(Ledpin7, HIGH);
      digitalWrite(Ledpin8, HIGH);
      delay(250);
      digitalWrite(Ledpin1, HIGH);
      digitalWrite(Ledpin2, HIGH);
      digitalWrite(Ledpin3, LOW);
      digitalWrite(Ledpin4, HIGH);
      digitalWrite(Ledpin5, LOW);
      digitalWrite(Ledpin6, HIGH);
      digitalWrite(Ledpin7, LOW);
      digitalWrite(Ledpin8, HIGH);
      delay(250);
      ii = ii + 0.25;
    }
    i = i + 2;
  }
}

