enum StatusMahasiswa { aktif, liburan, lulus }

void main() {
  var status = StatusMahasiswa.lulus;

  if (status == StatusMahasiswa.liburan) {
    print("Mahasiswa masih berlibur");
  } else if (status == StatusMahasiswa.aktif) {
    print("Mahasiswa sudah aktif");
  } else if (status == StatusMahasiswa.lulus) {
    print("Mahasiswa sudah lulus");
  } else {
    print("Data Menghilang");
  }
}
