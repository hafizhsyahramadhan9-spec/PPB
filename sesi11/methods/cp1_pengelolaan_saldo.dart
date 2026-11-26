class Rekening {
  final String nomorRekening;
  final String pemilik;
  int saldo;

  Rekening(this.nomorRekening, this.pemilik, this.saldo);

  void setor(int jumlah) {
    saldo += jumlah;
    print('$pemilik setor Rp $jumlah | Saldo: Rp $saldo');
  }

  bool tarik(int jumlah) {
    if (jumlah <= saldo) {
      saldo -= jumlah;
      print('$pemilik tarik Rp $jumlah | Sisa saldo: Rp $saldo');
      return true;
    } else {
      print('$pemilik gagal tarik Rp $jumlah (Saldo tidak mencukupi!)');
      return false;
    }
  }

  void transfer(Rekening tujuan, int jumlah) {
    print('--- Transfer Rp $jumlah dari $pemilik ke ${tujuan.pemilik} ---');
    if (tarik(jumlah)) {
      tujuan.setor(jumlah);
      print('Transfer berhasil!');
    } else {
      print('Transfer dibatalkan.');
    }
  }

  void info() {
    print('[$nomorRekening] $pemilik | Saldo: Rp $saldo');
  }
}

void main() {
  var rek1 = Rekening('111-222', 'Andi', 500000);
  var rek2 = Rekening('333-444', 'Budi', 200000);

  rek1.info();
  rek2.info();

  rek1.setor(100000);
  rek1.tarik(700000);

  rek1.transfer(rek2, 250000);

  print('--- Status Akhir ---');
  rek1.info();
  rek2.info();
}
