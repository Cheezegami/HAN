const int buttonPin = A0;
int ledPin = 13;
int buttonState = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(buttonPin, INPUT);
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int val;
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH); {
    val = 1;
    }
  else if (buttonState == LOW); {
    digitalWrite(ledPin, LOW);
  }
  if(val = 1) {
    digitalWrite(ledPin, HIGH);
  }
  Serial.println(buttonState);
//  Serial.println(buttonPin);
}
