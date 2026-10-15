void main() {
  List<String> input = ['85', 'seratus', '78'];

  for (var teks in input) {
    try {
      int nilai = int.parse(teks);

      print('Nilai: $nilai');
    } on FormatException {
      print('"$teks" anomali angka');
    }
  }
}
