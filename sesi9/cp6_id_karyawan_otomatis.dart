class Karyawan {
  static const String perusahaan = 'PT Jaya Jaya Maju';
  static int jumlahKaryawan = 0;

  late final String id;
  String nama;

  Karyawan(this.nama) {
    jumlahKaryawan++;
    id = 'EMP-$jumlahKaryawan';
  }

  void info() => print('$id | $nama | ${Karyawan.perusahaan}');
}

void main() {
  var k1 = Karyawan('Hafizh');
  var k2 = Karyawan('Putri');
  var k3 = Karyawan('Mochi');
  var k4 = Karyawan('Zeno');

  k1.info();
  k2.info();
  k3.info();
  k4.info();
  print('Total karyawan: ${Karyawan.jumlahKaryawan}');
}
