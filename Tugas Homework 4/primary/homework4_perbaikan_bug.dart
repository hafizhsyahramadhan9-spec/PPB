class Mahasiswa(final String nim, var String nama) {
  String get sapaan => 'Halo, Mahasiswa $nama (NIM: $nim)';
}

void cetakInfo(String teks) => print(teks);

void main() {
  final mhs = Mahasiswa('3202416001', 'Rina Marlina');
  cetakInfo(mhs.sapaan);
}
