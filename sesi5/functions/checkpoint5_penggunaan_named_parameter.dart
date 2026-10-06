void sapa(String nama) {
  print("Selamatkan saya dari darttt, $nama");
}

double pembagian(int a, int b) {
  var hasil = a / b;
  return hasil;
}

void biodata({String nama = "", int umur = 0}) {
  print("Nama: $nama");
  print("Umur: $umur tahun");
}

void main() {
 sapa("Hafizh");

  double hasil = pembagian(20, 5);
  print("Hasil: $hasil");

  biodata(nama: "Hafizh", umur: 21);
  biodata(umur: 21, nama: "Hafizh", );
}
