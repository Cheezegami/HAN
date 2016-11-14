void ledSetup() {
  pinMode(groenPin, OUTPUT);
  pinMode(roodPin, OUTPUT);
  Serial.begin(9600);
}

void ledLoop() {
  if (Serial.available() > 0) {
    ledState[0] = HIGH;
    digitalWrite(groenPin, ledState[0]);
  }
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;
    if (ledState[1] == LOW) {
      ledState[1] = HIGH;
    } else {
      ledState[1] = LOW;
    }
    digitalWrite(roodPin, ledState[1]);
  }
}

