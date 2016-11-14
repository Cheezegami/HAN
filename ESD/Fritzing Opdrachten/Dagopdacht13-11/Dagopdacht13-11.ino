const int PERIOD = 1000;
const int FREQ = 50;

void setup() {
  ledcontrolSetup();
  Serial.begin(9600);

}

void loop() {
  for (int i = 10; i < 100; i += 10) {
    long start = millis();
    Serial.println(i);
    while (millis() - start < PERIOD) {
      period(FREQ, i);
    }
  }
}
void period(int freq, int duty) {
  ledcontrolLedOn();
  delay(10 * duty / freq);
  ledcontrolLedOff();
  delay(10 * (100 - duty) / freq);
}

