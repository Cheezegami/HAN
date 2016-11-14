void ledSetup() {
  pinMode(ledPin[0],OUTPUT);
  pinMode(ledPin[1],OUTPUT);
  pinMode(ledPin[2],OUTPUT);
  Serial.begin(9600);
}

void ledLoop() {
  if (Serial.available() > 0) {
    ledState[0] = HIGH;
    digitalWrite(ledPin[0], ledState[0]);
  }
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis[0] >= interval[0]) {
    previousMillis[0] = currentMillis;
    if (ledState[1] == LOW) {
      ledState[1] = HIGH;
    } else {
      ledState[1] = LOW;
    }
    digitalWrite(ledPin[1], ledState[1]);
  }
  if (currentMillis - previousMillis[1] >= interval[1]) {
    previousMillis[1] = currentMillis;
    if (ledState[2] == LOW) {
      ledState[2] = HIGH;
    } else {
      ledState[2] = LOW;
    }
    digitalWrite(ledPin[2], ledState[2]);
  }
}
