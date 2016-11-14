int ledPin[] = {11,12,13};

int ledState[] = {LOW, LOW, LOW};
unsigned long previousMillis[] = {0,0};
const long interval[] = {1250, 500};


void setup() {
  ledSetup(); // Initialiseerd led lampjes om gebruikt te worden.
}

void loop() {
  ledLoop(); // Een functie wordt aangegeven die de ledlampjes continu moet uitvoeren.
}
