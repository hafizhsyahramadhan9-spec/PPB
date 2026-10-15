void main() {
  List<String> nilaiTeks = ['85', '100', '78'];

  int total = 0;
  for (var teks in nilaiTeks) {
    total += int.parse(teks);
  }
  double rataRata = total / nilaiTeks.length;

  print('Total: $total');
  print('Rata rata: ${rataRata.toStringAsFixed(2)}');
}
