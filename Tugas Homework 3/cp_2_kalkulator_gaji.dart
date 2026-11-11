class KalkulatorGaji {
  static const double persenPajak = 5;

  static double hitungPajak(double gajiKotor) {
    return gajiKotor * persenPajak / 100;
  }

  static double gajiBersih(double gajiPokok, double tunjangan) {
    double gajiKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(gajiKotor);

    return gajiKotor - pajak;
  }

  static void slip(String nama, double gajiPokok, double tunjangan) {
    double gajiKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(gajiKotor);
    double bersih = gajiBersih(gajiPokok, tunjangan);

    print("=== SLIP GAJI: $nama ===");
    print("Gaji Pokok : $gajiPokok");
    print("Tunjangan  : $tunjangan");
    print("Pajak (5%) : $pajak");
    print("Gaji Bersih: $bersih");
    print("-------------------------");
  }
}

void main() {
  KalkulatorGaji.slip("Hafizh", 8000000, 1000000);

  KalkulatorGaji.slip("Putri", 7000000, 1500000);

  KalkulatorGaji.slip("Mochi", 6000000, 1000000);
}
