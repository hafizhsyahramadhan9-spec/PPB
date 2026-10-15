void main() {
  Set<String> hadir = {'Hafizh', 'Putri', 'Syah'};

  hadir.add('Zeno');
  hadir.add('Mochi');
  print(hadir);

  hadir.remove('Syah');
  print(hadir);

  print(hadir.contains('Syah'));
  print(hadir.length);
}
