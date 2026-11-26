abstract class MetodePembayaran {
  final String namaMetode;

  MetodePembayaran(this.namaMetode);

  int get biayaAdmin;

  bool prosesTransaksi(int nominal);

  void cetakStruk(int nominal) {
    print('=== STRUK PEMBAYARAN: $namaMetode ===');
    print('Nominal Transaksi : Rp $nominal');
    print('Biaya Administrasi: Rp $biayaAdmin');
    int total = nominal + biayaAdmin;
    print('Total Tagihan     : Rp $total');
    if (prosesTransaksi(nominal)) {
      print('Status Transaksi  : BERHASIL');
    } else {
      print('Status Transaksi  : GAGAL');
    }
    print('--------------------------------------');
  }
}

class TransferBank extends MetodePembayaran {
  final String nomorRekening;

  TransferBank(this.nomorRekening) : super('Transfer Bank');

  @override
  int get biayaAdmin => 4000;

  @override
  bool prosesTransaksi(int nominal) {
    if (nominal >= 10000) {
      print('Memproses transfer ke Rekening: $nomorRekening...');
      return true;
    }
    print('Gagal: Minimal transfer Rp 10.000!');
    return false;
  }
}

class EWallet extends MetodePembayaran {
  final String nomorHp;
  int saldoEWallet;

  EWallet(this.nomorHp, this.saldoEWallet) : super('E-Wallet (QRIS)');

  @override
  int get biayaAdmin => 1500;

  @override
  bool prosesTransaksi(int nominal) {
    int total = nominal + biayaAdmin;
    if (saldoEWallet >= total) {
      saldoEWallet -= total;
      print('Memotong saldo $nomorHp. Sisa saldo: Rp $saldoEWallet');
      return true;
    }
    print('Gagal: Saldo E-Wallet tidak mencukupi untuk bayar Rp $total!');
    return false;
  }
}

void main() {
  List<MetodePembayaran> daftarMetode = [
    TransferBank('123-456-7890'),
    EWallet('08123456789', 50000),
  ];

  for (var metode in daftarMetode) {
    metode.cetakStruk(25000);
  }
}
