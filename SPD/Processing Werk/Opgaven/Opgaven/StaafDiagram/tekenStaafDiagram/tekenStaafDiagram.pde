void tekenStaven(int[] aantallen) { //Hiermee wordt het staafdiagram getekend.
  fill(255);
  int marge = 50; //Een afstand dat je tussen het staafdiagram en het scherm wilt houden.
  int hoogte = height - 2 * marge - 120; //Hiermee wordt de maximale hoogte van het staafdiagram berekend.
  int rectWidth = (width - 2 * marge) / aantallen.length; //Hiermee wordt de breedte van het staafdiagram berekend.
  for (int i = 0; i < aantallen.length; i++) {
    text(i + "(" + aantallen[i] + ")", marge + i * rectWidth + rectWidth / 2 - textWidth(i + "(" + aantallen[i] + ")") / 2, height - marge + 25);
    rect(marge + i * rectWidth, height - marge, rectWidth, -1 * (hoogte / max(aantallen) * aantallen[i]));
  }
}