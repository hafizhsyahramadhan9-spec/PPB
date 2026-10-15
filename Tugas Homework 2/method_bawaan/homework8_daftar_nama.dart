void main() {
  List<String> nama = ['Hafizh', 'Putri', 'Syah', 'Mochi'];

  nama.add('Zeno');
  nama.remove('Syah');
  nama.sort((a, b) => a.compareTo(b));

  print(nama);
  print('Jumlah: ${nama.length}');
}
