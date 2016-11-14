
void Setup() {
  int Getal = 97;
  int N = 8;
  callToN(Getal, N);
}

  void callToN(int Getal, int N) {
  while (Getal >= 0) {
    Getal = N * Getal / N + Getal % N;
  }
}