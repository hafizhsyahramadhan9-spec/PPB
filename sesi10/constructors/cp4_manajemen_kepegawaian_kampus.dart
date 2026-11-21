class Pegawai {
  final String nip;
  final String nama;
  final int gajiPokok;

  Pegawai(this.nip, this.nama, this.gajiPokok) {
    print('  [Init Superclass] Pegawai: $nama ($nip)');
  }


  int hitungTotalGaji() => gajiPokok;


  void info() {
    print('  → [$nip] $nama | Gaji Bersih: Rp ${hitungTotalGaji()}');
  }
}

class Dosen extends Pegawai {
  final int jumlahSks;

  Dosen(super.nip, super.nama, super.gajiPokok, this.jumlahSks) {
    print('  [Init Subclass] Dosen: $nama mengajar $jumlahSks SKS');
  }

  @override
  int hitungTotalGaji() => gajiPokok + (jumlahSks * 100000);
}

class Staf extends Pegawai {
  final int uangLembur;

  Staf(super.nip, super.nama, super.gajiPokok, this.uangLembur) {
    print('  [Init Subclass] Staf: $nama');
  }

  @override
  int hitungTotalGaji() => gajiPokok + uangLembur;
}

void main() {
  print('1. Membuat Object Dosen:');
  var dosen = Dosen('198501', 'Widi Arrohman', 4000000, 3);
  dosen.info();

  print('\n2. Membuat Object Staf:');
  var staf = Staf('199002', 'Hei Tayo', 2000000, 200000);
  staf.info();
}
