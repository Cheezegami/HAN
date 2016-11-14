const int ledlist[] = {6, 7, 8, 9, 10, 11, 12, 13}; //Ledlampjes die gebruikt worden.
int ledState[] = {LOW, LOW, LOW, LOW, LOW, LOW, LOW, LOW};
const int ledAantal = 8;
unsigned long previousMillis[] = {0, 0, 0, 0, 0, 0, 0, 0};
const long interval[] = {1000 * 2, 1000 * 4, 1000 * 6, 1000 * 8, 1000 * 10, 1000 * 12, 1000 * 14, 1000 * 16};

void setup() {
  ledSetup(); // Initialiseerd led lampjes om gebruikt te worden.
}

void loop() {
  ledLoop(); // Een functie wordt aangegeven die de ledlampjes continu moet uitvoeren.
}