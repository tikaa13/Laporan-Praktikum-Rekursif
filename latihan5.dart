void decToBin(int num) {
  if (num > 0) {
    // Panggil fungsi secara rekursif dengan num dibagi 2
    decToBin(num ~/ 2);
    // Cetak sisa pembagian num dengan 2
    print(num % 2);
  }
}

void main() {
  int number = 10;
  print('Representasi biner dari $number adalah:');
  decToBin(number);
}
