void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Hafizh', 'nim': 'TI042', 'nilai': '88'},
    {'nama': 'Putri', 'nim': 'AK043', 'nilai': '95'},
  ];

  print("=== Daftar Mahasiswa ===");
  print(mahasiswa);
  for (var mhs in mahasiswa) {
    print(mhs);
    print(
      'Nama : ${mhs['nama']} | NIM : ${mhs['nim']} | Nilai : ${mhs['nilai']}',
    );
  }
}
