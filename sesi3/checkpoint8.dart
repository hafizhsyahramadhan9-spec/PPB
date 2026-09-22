void main() {
  var S1 = 'Hai';
  var S2 = "Dart";
  var S3 = 'ini teks petik tunggal \'escaped\'';
  var S4 = "bisa di petik ganda";

  print(S1);
  print(S2);
  print(S3);
  print(S4);

  var nama = "Putri";
  print("Halo: $nama");
  print("Jumlah karakter: ${nama.length}");

  var multi = '''
  ini adalah
  string multi-baris
  ''';
  print(multi);

  var raw = r'Tidak ada \n escape disini';
  print(raw);
}
