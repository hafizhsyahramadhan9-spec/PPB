void main() {
  // final mahasiswa = <String, List<int>>{
  //   'Hafizh': [80, 85, 90],
  //   'Putri': [75, 70, 80],
  // };

  // for (final data in mahasiswa.entries) {
  //   print('Mahasiswa: ${data.key}');
  //   for (final nilai in data.value) {
  //     print('Nilai: $nilai');
  //   }
  //   print('');
  // }

  final angkatan = <int, List<String>>{
    2025: ['Hafizh'],
    2023: ['Putri'],
  };

  var cari = 'Hafizh';

  outerLoop:
  for (final tahun in angkatan.keys) {
    for (final mhs in angkatan[tahun]!) {
      print('Angkatan $tahun - $mhs');
      if (mhs == cari) {
        print('Berhenti di Hafizh!');
        break outerLoop;
      }
    }
  }
}
