void main() {
  // List<String> mahasiswa = ["Hafizh", "Putri"];
  // List<int> umur = [21, 21];

  // // print(mahasiswa);
  // print("nama mahasiswa: ${mahasiswa[0]}");

  // // print(umur);
  // print(umur[0]);

  var mahasiswa = ["Hfizh", "Putri"];

  print("Jumlah mahasiswa: ${mahasiswa.length}");
  print("Semua mahasiswa: $mahasiswa");
  print("Mahasiswa pertama: ${mahasiswa[1]}");

  mahasiswa[0] = "Hafizh";
  print(mahasiswa);
}
