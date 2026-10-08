void main() {
  List<String> krs = ['Ekonomi', 'Hancor'];
  krs.add('Pembrogaman MTK');

  print(krs);
  krs.remove('Geometri');
  print(krs);

  print(krs.contains('Serah'));
  print(krs.length);
  krs.clear();

  print(krs);
  print(krs.isEmpty);
}
