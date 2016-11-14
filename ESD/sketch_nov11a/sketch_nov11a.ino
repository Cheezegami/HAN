const int rood = 13;
const int groen = 12;
const int geel = 11;

void setup() {
  pinMode(rood, OUTPUT);
  pinMode(groen, OUTPUT);
  pinMode(geel, OUTPUT);
}


void loop() {
  float i = 1;
  float ii = 2;
  while (i >= 1) {
    while (ii >= 1) {
      digitalWrite(rood, HIGH);
      digitalWrite(groen, LOW);
      digitalWrite(geel, LOW);
      delay(1000);
      digitalWrite(rood, LOW);
      digitalWrite(groen, HIGH);
      digitalWrite(geel, LOW);
      delay(1000);
      digitalWrite(rood, LOW);
      digitalWrite(groen, LOW);
      digitalWrite(geel, HIGH);
      delay(1000);
      ii = ii - 1;
    }
    i = i - 4;
  }
  while (i <= 0) {
    while (ii < 2) {
      digitalWrite(rood, HIGH);
      digitalWrite(groen, LOW);
      digitalWrite(geel, LOW);
      delay(250);
      digitalWrite(rood, LOW);
      digitalWrite(groen, HIGH);
      digitalWrite(geel, LOW);
      delay(250);
      digitalWrite(rood, LOW);
      digitalWrite(groen, LOW);
      digitalWrite(geel, HIGH);
      delay(250);
      ii = ii + 0.25;
    }
    i = i + 2;
  }
}

