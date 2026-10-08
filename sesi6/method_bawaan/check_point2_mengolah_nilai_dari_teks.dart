void main() {
  String teksNilai = '78';
  String teksIpk = '3.56';

  int nilai = int.parse(teksNilai);
  double ipk = double.parse(teksIpk);

  print(nilai + 9);
  print(ipk);
  print(nilai.toString() + ' poin');

  double rataRata = 1024 / 6;

  print(rataRata);
  print(rataRata.toStringAsFixed(1));
}
