void main() {
  List<String> daftarNama = ['Hafizh', 'Putri'];

  String kataKunci = 'RI';

  for (var nama in daftarNama) {
    if (nama.toLowerCase().contains(kataKunci.toLowerCase())) {
      print(nama);
    }
  }
}
