
class AkunFintech {
  final String _nik, namaLengkap;
  // ignore: unused_field
  final int _pin;
  final String statusVerifikasi;

  AkunFintech({
    required String nik,
    required this.namaLengkap,
    required int pin,
    int saldoAwal = 0,
  })  : assert(nik.length == 16, 'NIK harus 16 digit!'),
        assert(pin >= 100000 && pin <= 999999, 'PIN harus 6 digit!'),
        _nik = nik,
        _pin = pin,
        statusVerifikasi = saldoAwal > 0 ? 'Terverifikasi' : 'Pending';

  void infoAkun() => print(
      'NIK: ${_nik.substring(0, 6)}****** | $namaLengkap | Status: $statusVerifikasi');
}

void main() {
  final akun1 = AkunFintech(nik: '1234567890123456', namaLengkap: 'Budi Santoso', pin: 123456, saldoAwal: 100000);
  final akun2 = AkunFintech(nik: '6543210987654321', namaLengkap: 'Rina Wijaya', pin: 654321);

  akun1.infoAkun();
  akun2.infoAkun();
}
