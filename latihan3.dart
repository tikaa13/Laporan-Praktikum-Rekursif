void main() {
  List<int> data = [
    13,
    31,
    99,
    55,
    42,
    18,
    10,
    33,
    76,
    93,
    245,
    125,
    225
  ];
  int target = 10;

  int result = binarySearch(data, target, 0, data.length - 1);

  if (result != -1) {
    print("Data $target berada pada indeks ke - $result");
  } else {
    print("Data $target tidak ditemukan");
  }
}

int binarySearch(List<int> data, int target, int low, int high) {
  if (low > high) {
    return -1; // Data tidak ditemukan
  }

  int mid = (low + high) ~/ 2;

  if (data[mid] == target) {
    return mid; // Data ditemukan
  } else if (data[mid] > target) {
    return binarySearch(data, target, low, mid - 1); // Cari di setengah kiri
  } else {
    return binarySearch(data, target, mid + 1, high); // Cari di setengah kanan
  }
}
