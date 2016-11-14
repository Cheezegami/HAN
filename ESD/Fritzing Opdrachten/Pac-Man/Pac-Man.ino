


byte token_0[] = {
  B00111100,
  B01111110,
  B11111111,
  B00001111,
  B00001111,
  B11111111,
  B01111110,
  B00111100
};

byte token_1[] = {
  B00000000,
  B00000000,
  B00011000,
  B00111100,
  B00111100,
  B00011000,
  B00000000,
  B00000000
};

byte token_2[] = {
  B00000000,
  B00000000,
  B00000000,
  B00011000,
  B00011000,
  B00000000,
  B00000000,
  B00000000
};
unsigned long prev;
const int DELAY = 100;
int positie;
boolean swap;


void setup() {
  Serial.begin(9600);
  positie = 0;
  swap = false;
  matrixSetup();
  _matrixBlink(1);
  matrixBrightness(15);
}

void loop() {
  unsigned long now = millis();
  if (now - prev > DELAY) {
    prev = now;
    if(swap) {
    naarLinks(token_0, token_1, positie);
    } else {
      naarLinks(token_1, token_0, positie);
    }
    positie++;
    if (positie > 7) {
      positie = 0;
      swap = !swap;
    }
  }
}

void naarLinks(byte een[], byte twee[], byte pos) {
  // Serial.println(positie);
  byte patt[8];    
  
  for (int i=0; i<8; i++) {
    patt[i] = een[i] << pos | twee[i]>>8-pos;
  }
  
  matrixPattern(patt);
}
