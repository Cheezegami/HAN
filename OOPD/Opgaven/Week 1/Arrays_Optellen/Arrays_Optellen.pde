int[] testGetallen = {5, 5, 6, 8};
int[] testGetallen2 = {3, 4, 6, 6};

void setup() {
  telElementenOp(testGetallen, testGetallen2);
}

void telElementenOp(int[] getallen, int[]getallen2) {
  int arrayOptelling;
  for (int i = 0; i < getallen.length; i++) {
    if (getallen.length == getallen2.length) {
      arrayOptelling = getallen[i]+getallen2[i]; 
      println(arrayOptelling);
    } else {
      println("Make sure both the arrays are the same length.");
      i=getallen.length;
    }
  }
}