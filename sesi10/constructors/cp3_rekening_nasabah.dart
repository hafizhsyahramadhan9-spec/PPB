class RekeningBank {
  final String _noRekening;
  final int _saldo;

  final String namaNasabah;
  final String tipeAkun;

  bool isActive = true;

  RekeningBank({
    required String noRekening,
    required this.namaNasabah,
    int saldoAwal = 0,
  })  : assert(noRekening.length == 10, 'No rekening wajib 10 digit!'),
        assert(saldoAwal >= 0, 'Saldo awal tidak boleh negatif!'),
        _noRekening = noRekening,
        _saldo = saldoAwal,
        tipeAkun = (saldoAwal >= 20000000) ? 'Prioritas' : 'Premier League awikwok';


  void tampilkanInfo() {
    print('[$_noRekening] $namaNasabah | Saldo: Rp $_saldo | Tipe: $tipeAkun | Aktif: $isActive');
  }
}


void main() {
  var nasabah1 = RekeningBank(
    noRekening: '5324529872',
    namaNasabah: 'Hafizh',
    saldoAwal: 5000000,
  );

  var nasabah2 = RekeningBank(
    noRekening: '4327242347',
    namaNasabah: 'Putri',
    saldoAwal: 2000000,
  );

  nasabah1.tampilkanInfo();
  nasabah2.tampilkanInfo();
}
