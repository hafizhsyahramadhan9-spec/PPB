class Antrean {
  static const String loket = 'CS';
  static int nomorTerakhir = 0;
  static int kuotaHarian = 5;

  String namaPengunjung;
  String? nomorAntrean;

  Antrean(this.namaPengunjung) {
    if (kuotaHarian > 0) {
      nomorTerakhir++;

      nomorAntrean =
          '$loket-${nomorTerakhir.toString().padLeft(3, '0')}';

      kuotaHarian--;
    } else {
      print("Kuota hari ini sudah penuh!");
      nomorAntrean = "-";
    }
  }

  void tampilkanAntrean() {
    print("$namaPengunjung | Nomor Antrean: $nomorAntrean");
  }
}

void main() {
  Antrean pengunjung1 = Antrean("Hafizh");
  Antrean pengunjung2 = Antrean("Putri");
  Antrean pengunjung3 = Antrean("Mochi");
  Antrean pengunjung4 = Antrean("Zeno");
  Antrean pengunjung5 = Antrean("Fasya");
  Antrean pengunjung6 = Antrean("Derick");
  Antrean pengunjung7 = Antrean("Erdi");

  print("===== DAFTAR ANTREAN =====");

  pengunjung1.tampilkanAntrean();
  pengunjung2.tampilkanAntrean();
  pengunjung3.tampilkanAntrean();
  pengunjung4.tampilkanAntrean();
  pengunjung5.tampilkanAntrean();
  pengunjung6.tampilkanAntrean();
  pengunjung7.tampilkanAntrean();

  print("");
  print("Sisa kuota hari ini: ${Antrean.kuotaHarian}");
}
