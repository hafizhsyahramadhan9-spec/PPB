class Uang {
  final int nominal;

  Uang(this.nominal);

  Uang operator +(Uang lain) => Uang(nominal + lain.nominal);

  Uang operator -(Uang lain) {
    if (nominal < lain.nominal) {
      print('Peringatan: Saldo menjadi minus!');
    }
    return Uang(nominal - lain.nominal);
  }

  Uang operator *(int kelipatan) => Uang(nominal * kelipatan);

  bool operator >(Uang lain) => nominal > lain.nominal;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Uang && runtimeType == other.runtimeType && nominal == other.nominal);

  @override
  int get hashCode => nominal.hashCode;

  @override
  String toString() => 'Rp $nominal';
}

void main() {
  var a = Uang(80000);
  var b = Uang(100000);

  print('a = $a');
  print('b = $b');
  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('b * 3 = ${b * 3}');
  print('Apakah a > b? ${a > b}');
  print('Apakah a == Uang(50000)? ${a == Uang(50000)}');
  print('Apakah a != b? ${a != b}');
}
