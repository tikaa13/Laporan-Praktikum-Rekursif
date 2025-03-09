bool search(List<int> x, int size, int n) {
  if (size > 0) {
    // Cek apakah elemen terakhir sama dengan n
    if (x[size - 1] == n) return true;
    // Panggil fungsi secara rekursif dengan ukuran dikurangi 1
    return search(x, size - 1, n);
  }
  return false;
}

void main() {
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5
  ];
  int searchNumber = 3; // Angka yang akan dicari
  bool found = search(numbers, numbers.length, searchNumber);

  if (found) {
    print('$searchNumber ditemukan dalam daftar.');
  } else {
    print('$searchNumber tidak ditemukan dalam daftar.');
  }
}
