class Orang {
  final String nama;
  final int umur;

  Orang(this.nama, this.umur);
  Orang.dariMap(Map<String, dynamic> d)
      : nama = d['nama'], umur = d['umur'];
}

class Mahasiswa extends Orang {
  final String nim;

  Mahasiswa(super.nama, super.umur, this.nim);
  Mahasiswa.dariMap(Map<String, dynamic> d)
      : nim = d['nim'], super.dariMap(d);

  factory Mahasiswa.dariCsv(String csv) {
    var d = csv.split(',');
    return Mahasiswa(d[0], int.parse(d[1]), d[2]);
  }

  void tampilkan() =>
      print('→ Mahasiswa: $nama ($umur thn) - NIM: $nim');
}

void main() {
  final m1 = Mahasiswa.dariMap({
    'nama': 'Budi', 'umur': 20, 'nim': '3202416001'
  });
  final m2 = Mahasiswa.dariCsv('Siti,19,3202416002');

  m1.tampilkan();
  m2.tampilkan();
}
