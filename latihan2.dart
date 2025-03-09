void main() {
  int jumlahKarakter = 3;
  String karakter = 'abc';
  generateCombinations(karakter, '', jumlahKarakter);
}

void generateCombinations(String karakter, String prefix, int jumlahKarakter) {
  if (jumlahKarakter == 0) {
    print(prefix);
    return;
  }

  for (int i = 0; i < karakter.length; i++) {
    String newPrefix = prefix + karakter[i];
    generateCombinations(karakter, newPrefix, jumlahKarakter - 1);
  }
}
