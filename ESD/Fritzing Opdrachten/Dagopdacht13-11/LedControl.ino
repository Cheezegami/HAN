const int LEDPIN = 13;
void ledcontrolSetup() {
pinMode(LEDPIN,OUTPUT);
}
void ledcontrolLedOn() {
digitalWrite(LEDPIN, HIGH);
}
void ledcontrolLedOff() {
digitalWrite(LEDPIN, LOW);
}
