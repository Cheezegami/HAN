int[] testGetallen = {5, 5, 6};
int[] testGetallen2 = {3, 4, 6};

void setup() {
  telElementenOp(testGetallen, testGetallen2);
  
}

void telElementenOp(int[] getallen, int[]getallen2){
  int[] arrayOptelling;
  for (int i = 0; i < getallen.length; i++) {
  arrayOptelling[i] = getallen[i]+getallen2[i]; 
  println(arrayOptelling[i]);
  }
}