class Pelanggan {
  final String id;
  final String nama;
  int totalBelanja = 0;

  Pelanggan(this.id, this.nama);

  void bayar(int jumlah) {
    totalBelanja += jumlah;
    print('[$nama] Membayar belanja: Rp $jumlah');
  }

  void info() {
    print('ID: $id | $nama | Total Belanja: Rp $totalBelanja');
  }
}

class PelangganMember extends Pelanggan {
  int poinReward = 0;

  PelangganMember(super.id, super.nama);

  @override
  void bayar(int jumlah) {
    super.bayar(jumlah); 
    int poinDidapat = jumlah ~/ 10000; 
    poinReward += poinDidapat;
    print('[$nama] Mendapatkan $poinDidapat poin reward! (Total Poin: $poinReward)');
  }
}

class PelangganVIP extends Pelanggan {
  final double diskonPersen;

  PelangganVIP(super.id, super.nama, [this.diskonPersen = 10.0]);

  @override
  void bayar(int jumlah) {
    int potongan = (jumlah * diskonPersen ~/ 100);
    int tagihanAkhir = jumlah - potongan;
    print('[$nama] Diskon VIP ${diskonPersen.toInt()}%: -Rp $potongan');
    super.bayar(tagihanAkhir);
  }
}

void main() {
  var member = PelangganMember('MBR-01', 'Rina Marlina');
  var vip = PelangganVIP('VIP-01', 'Hendra Wijaya', 15.0);

  member.bayar(50000);
  member.info();

  print('---');

  vip.bayar(200000);
  vip.info();
}
