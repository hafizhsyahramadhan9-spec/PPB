void main() {
  print(5.compareTo(6));
  print(6.compareTo(5));
  print(5.compareTo(5));
  print('Hafizh'.compareTo('Putri'));

  List<int> nilai = [85, 100, 78, 95];
  List<int> urut = [...nilai];

  urut.sort((a, b) => a.compareTo(b));
  print(urut);

  urut.sort((a, b) => b.compareTo(a));
  print(urut);

  print(nilai);
}
