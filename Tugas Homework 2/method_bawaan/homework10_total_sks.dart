void main() {
  Map<String, int> sks = {'TI201': 3, 'TI202': 4, 'TI205': 2};

  sks.remove('TI205');
  print(sks.containsKey('TI201'));

  int total = 0;
  for (var nilai in sks.values) {
    total += nilai;
  }
  print('Total SKS: $total');
}
