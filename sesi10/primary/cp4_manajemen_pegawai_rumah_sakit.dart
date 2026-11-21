class TenagaMedis(final String id, final String nama, final int gajiPokok);

class DokterSpesialis(super.id, super.nama, super.gajiPokok, final String spesialisasi, final int pasienDitangani)
    extends TenagaMedis {
  int hitungGaji() => gajiPokok + (pasienDitangani * 6000000);

  void info() {
    print('[$id] dr. $nama ($spesialisasi) | Pasien: $pasienDitangani | Total Gaji: Rp ${hitungGaji()}');
  }
}

class Perawat(super.id, super.nama, super.gajiPokok, final int shiftMalam)
    extends TenagaMedis {
  int hitungGaji() => gajiPokok + (shiftMalam * 50000);

  void info() {
    print('[$id] Ns. $nama | Shift Malam: $shiftMalam | Total Gaji: Rp ${hitungGaji()}');
  }
}

void main() {
  var dokter = DokterSpesialis('MED01', 'Orang1', 8000000, 'Hati', 33);
  var perawat = Perawat('MED02', 'Orang2', 4000000, 11);

  dokter.info();
  perawat.info();
}
