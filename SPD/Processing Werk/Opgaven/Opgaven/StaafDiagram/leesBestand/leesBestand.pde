float[] loadFloats(String bestand) {
  String[] waarden = loadStrings(bestand);
  return float(waarden);
}