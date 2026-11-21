class Pengguna(final String username, String sandiAwal, [var String status = 'Aktif']) {
  // sandiAwal BUKAN field, hanya dipakai untuk menghitung properti lain
  final int panjangSandi = sandiAwal.length;

  void info() {
    print('User: $username | Sandi ($panjangSandi digit) | Status: $status');
  }
}

void main() {
  var user1 = Pengguna('Hafizh', 'apaajadah');
  var user2 = Pengguna('Putri', 'yesdapat26', 'Non-Aktif');

  user1.info();
  user2.info();

  user1.status = 'Suspended';
  print('Status baru ${user1.username}: ${user1.status}');

}
