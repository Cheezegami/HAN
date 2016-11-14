char patroon = 'H';
char patroon2 ='S';
int Ledlist[] = {6, 7, 8, 9, 10, 11, 12, 13};
void setup() {
  for (int i = 0; i < 8; i++) {
    pinMode(Ledlist[i], OUTPUT);
  }
  Serial.begin(9600);
}

void loop() {
  while (Serial.available() == 0);
  int val = Serial.read();
  Serial.println(val);
  if (val = 72) {
    patroonH();
  }
  else if (val = 83) {
    patroonS();
  }
}
void knipperen(int led, int vertraging) {
  digitalWrite(led, HIGH);
  delay(vertraging);
  digitalWrite(led, LOW);
  delay(vertraging);
}

void samenvoegenAan(int led, int vertraging) {
  digitalWrite(led, HIGH);
  digitalWrite(7 - led, HIGH);
  delay(vertraging);
  digitalWrite(led, LOW);
  digitalWrite(7 - led, LOW);
  delay(vertraging);
}
void patroonH() {
  const int vertraging = 250;
  for (int i = 0; i < 8; i++) {
    knipperen(Ledlist[i], vertraging);
  }
}
void patroonS() {
  const int vertraging = 250;
  for (int i = 0; i < 4; i++) {
    samenvoegenAan(Ledlist[i], vertraging);
    samenvoegenAan(Ledlist[7 - i], vertraging);
  }
}


