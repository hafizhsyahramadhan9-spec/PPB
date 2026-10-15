void main() {
  String kodeInput = ' TI201';
  String kode = kodeInput.trim().toUpperCase();

  print('Kode: $kode');
  print('Kosong: ${kode.isEmpty}');
  print('Prodi TI: ${kode.contains('TI')}');
}
