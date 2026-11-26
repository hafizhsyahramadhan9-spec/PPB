class Durasi {
  final int totalMenit;

  Durasi.dariMenit(this.totalMenit);

  int get jam => totalMenit ~/ 60;
  int get sisaMenit => totalMenit % 60;

  void info() => print(
      'Durasi tayang: $totalMenit menit ($jam jam $sisaMenit menit)');
}

class ResolusiLayar {
  final int lebar, tinggi;

  const ResolusiLayar(this.lebar, this.tinggi);
}

void main() {
  Durasi.dariMenit(145).info();

  const r1 = ResolusiLayar(1920, 1080);
  const r2 = ResolusiLayar(1920, 1080);

  print('Identik: ${identical(r1, r2)}');
}
