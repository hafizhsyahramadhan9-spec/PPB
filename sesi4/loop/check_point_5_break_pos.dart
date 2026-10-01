void main() {
  final produk = ['PC', 'CPU', 'Prosesor', 'ICP', 'Obeng', 'Kopi'];
  var cari = 'CPU';

  for (final item in produk) {
    print('Mencari: $item');

    if (item == cari) {
      print('Produk ditemukan!');
      break;
    }
  }

  print("program selesai");
}
