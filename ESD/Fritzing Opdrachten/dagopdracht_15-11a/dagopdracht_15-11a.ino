int groenPin = 11;
int roodPin = 12;

int ledState[] = {LOW,LOW};
unsigned long previousMillis = 0;
const long interval = 1000;


void setup() {
  ledSetup(); // Initialiseerd led lampjes om gebruikt te worden.
}

void loop() {
  ledLoop(); // Een functie wordt aangegeven die de ledlampjes continu moet uitvoeren.
}
