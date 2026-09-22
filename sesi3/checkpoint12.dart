void main() {
  // Map<String, String> mahasiswa = {
  //   "nama": "Hafizh",
  //   "jurusan": "Teknik Informatika",
  // };

  // print("Nama: ${mahasiswa["nama"]}");
  // print("Jurusan: ${mahasiswa["jurusan"]}");

  var mahasiswa = {"TI042": "Hafizh", "AK043": "Putri"};

  print("Nama mahasiswa: ${mahasiswa['AK043']}");

  mahasiswa["TI043"] = "Mochi";

  print("Nama mahasiswa: $mahasiswa");

  final prodi = const {1: "TI", 2: "AK", 3: "TI"};
  print("Kode prodi: $prodi");
}
