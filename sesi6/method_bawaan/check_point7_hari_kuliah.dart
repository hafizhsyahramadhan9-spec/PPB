enum tahun { tahun25, tahun26, tahun27 }

void main() {
  List<int> tahun = [2025, 2026, 2027];

  print(tahun);
  print(tahun.length);
  print(tahun[1]);

  for (var t in tahun) {
    print(t);
  }
}