void main() {
  Map<String, int> stok = {'PC': 3, 'Laptop': 7, 'Mouse': 56};

  print(stok.keys);
  print(stok.values);
  print(stok.containsKey('PC'));
  stok.remove('PC');
  print(stok);

  int total = 0;
  for (var jumlah in stok.values) {
    total += jumlah;
  }

  print('Total stok: $total');
}
