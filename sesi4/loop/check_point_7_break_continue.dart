void main() {
  final mahasiswa = ['Hafizh', 'Putri', 'Syah', 'Dewi'];
  for (final mhs in mahasiswa) {
    if (mhs == 'Syah') {
      print('Data Syah ditemukan, hentikan pencarian.');
      break;
    }
    print('Memeriksa: $mhs');
  }
  print('\nLewati mahasiswa yang bernama Hafizh:');
  for (final mhs in mahasiswa) {
    if (mhs == 'Hafizh') {
      continue;
    }
    print('Mahasiswa: $mhs');
  }
}
