const int ledlist[] = {6, 7, 8, 9, 10, 11, 12, 13}; //Ledlampjes die gebruikt worden.
int ledState[] = {LOW, LOW, LOW, LOW, LOW, LOW, LOW, LOW};
const int ledAantal = 8;
unsigned long previousMillis[] = {0, 0, 0, 0, 0, 0, 0, 0};
const long interval[] = {1000 / 2, 1000 / 4, 1000 / 6, 1000 / 8, 1000 / 10, 1000 / 12, 1000 / 14, 1000 / 16};

void setup() {
  ledSetup(); // Initialiseerd led lampjes om gebruikt te worden.
}

void loop() {
  ledLoop(); // Een functie wordt aangegeven die de ledlampjes continu moet uitvoeren.
  serialLoop();
}

void ledSetup() { // Initialiseerd led lampjes om gebruikt te worden.
  for (int i = 0; i < ledAantal; i++) {
    pinMode(ledlist[i], OUTPUT);
  }
}

void ledLoop() { // Een functie die de ledlampjes continu moet uitvoeren.
  for (int i = 0; i < ledAantal; i++) {
    unsigned long currentMillis = millis();
    if (currentMillis - previousMillis[i] >= interval[i]) {
      previousMillis[i] = currentMillis;
      ledToggle(i); //Roept Functie op om ledlampjes aan en uit te schakelen.
    }
  }
}

void ledToggle(int i) { // Functie op om ledlampjes aan en uit te schakelen.
  if (ledState[i] == LOW) {
    ledState[i] = HIGH;
  } else {
    ledState[i] = LOW;
  }
  digitalWrite(ledlist[i], ledState[i]);
}


void SerialLoop() {
    while (Serial.available() == 0);
  int val = Serial.read();
  Serial.println(val);
  if (val = 72) {
    patroonH();
  }
  else if (val = 83) {
    patroonS();
}
