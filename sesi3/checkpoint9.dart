import 'dart:io';

void main() {
  //   bool mahasiswaAktif = true;

  //   if (mahasiswaAktif) {
  //     print("Mahasiswa Aktif");
  //     else {
  //         print("Mahasiswa Tidak Aktif") ;
  //     }
  //   }
  bool isLoggedin = false;

  stdout.write("Masukkan UserName:");
  String? username = stdin.readLineSync();

  if (username == "Putri") 
  {
    isLoggedin = true;
  }

  if (isLoggedin) {
    print("Login berhasil! Halo Kawan, $username.");
  } else {
    print("Login gagal! Coba Lagi Kawan. ");
  }
}
