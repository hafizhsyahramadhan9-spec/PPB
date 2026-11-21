class TitikLokasi {
  final double latitude;
  final double longitude;
  final String namaTempat;

  static const kantorPusat = TitikLokasi(-1.8500, 109.9700, 'Kantor Utama');

  const new(this.latitude, this.longitude, [this.namaTempat = 'Gudang Pusat']);

  const new origin()
      : latitude = 0.0,
        longitude = 0.0,
        namaTempat = 'Titik Nol';

  new cabang(this.latitude, this.longitude, this.namaTempat);


  void tampilkan() {
    print('$namaTempat: ($latitude, $longitude)');
  }
}

void main() {
  var lokasiA = const TitikLokasi(-1.8500, 109.9700, 'Kantor Utama');

  var lokasiB = TitikLokasi.origin();

  var lokasiC = TitikLokasi.cabang(-1.8200, 109.9500, 'Cabang Delta');

  lokasiA.tampilkan();
  lokasiB.tampilkan();
  lokasiC.tampilkan();

}
