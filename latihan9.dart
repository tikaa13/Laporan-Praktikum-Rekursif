int f(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  if (n == 2) return 1;
  // Rekursi: kembalikan 2 * f(n - 2) + f(n - 3)
  return 2 * f(n - 2) + f(n - 3);
}

void main() {
  int number = 3;
  int result = f(number);
  print('Hasil f($number) adalah: $result');
}
