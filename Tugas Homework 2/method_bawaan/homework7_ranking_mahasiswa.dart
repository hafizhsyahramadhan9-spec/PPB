void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Hafizh', 'nilai': 88},
    {'nama': 'Putri', 'nilai': 95},
  ];

  mahasiswa.sort((a, b) => (b['nilai'] as int).compareTo(a['nilai'] as int));

  for (var mhs in mahasiswa) {
    print('${mhs['nama']}: ${mhs['nilai']}');
  }
}
