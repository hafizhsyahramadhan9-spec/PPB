class Rekening {
  // Instance variable
  final String nomorRekening;
  String namaPemilik;
  double saldo = 0;
  String? transaksiTerakhir;

  Rekening({
    required this.nomorRekening,
    required this.namaPemilik,
  });

  void setor(double jumlah) {
    saldo += jumlah;
    transaksiTerakhir = "Setor $jumlah";
  }

  void tarik(double jumlah) {
    if (saldo >= jumlah) {
      saldo -= jumlah;
      transaksiTerakhir = "Tarik $jumlah";
    } else {
      print("Saldo tidak cukup!");
    }
  }

  void cekSaldo() {
    print(
      "$nomorRekening | $namaPemilik | Saldo: $saldo | Terakhir: ${transaksiTerakhir ?? '-'}",
    );
  }
}

void main() {
  Rekening rekening1 = Rekening(
    nomorRekening: "1234567",
    namaPemilik: "Hafizh",
  );

  Rekening rekening2 = Rekening(
    nomorRekening: "7654321",
    namaPemilik: "Putri",
  );

  rekening1.setor(500000);

  rekening1.cekSaldo();
  rekening2.cekSaldo();
}
