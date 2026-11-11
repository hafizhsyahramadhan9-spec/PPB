class Invoice {
  String nomor;
  String namaKlien;
  double subtotal;
  double pajak;
  double diskon;

  Invoice({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
    this.diskon = 0,
  });

  Invoice.member({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
  }) : diskon = 10;

  double hitungTotal() {
    double jumlahDiskon = subtotal * diskon / 100;
    double hargaSetelahDiskon = subtotal - jumlahDiskon;

    double jumlahPajak = hargaSetelahDiskon * pajak / 100;

    return hargaSetelahDiskon + jumlahPajak;
  }

  void cetak() {
    double jumlahDiskon = subtotal * diskon / 100;
    double hargaSetelahDiskon = subtotal - jumlahDiskon;
    double jumlahPajak = hargaSetelahDiskon * pajak / 100;

    print("Nomor Invoice : $nomor");
    print("Nama Klien    : $namaKlien");
    print("Subtotal      : Rp ${subtotal.toStringAsFixed(0)}");
    print("Diskon        : $diskon% (Rp ${jumlahDiskon.toStringAsFixed(0)})");
    print("Pajak         : $pajak% (Rp ${jumlahPajak.toStringAsFixed(0)})");
    print("Total         : Rp ${hitungTotal().toStringAsFixed(0)}");
    print("--------------------------------");
  }
}

void main() {
  Invoice invoice1 = Invoice(
    nomor: "INV001",
    namaKlien: "Hafizh",
    subtotal: 1000000,
  );

  Invoice invoice2 = Invoice.member(
    nomor: "INV002",
    namaKlien: "Putri",
    subtotal: 1000000,
  );

  print("===== INVOICE BIASA =====");
  invoice1.cetak();

  print("===== INVOICE MEMBER =====");
  invoice2.cetak();

  print("===== PERBANDINGAN =====");
  print("Total invoice biasa  : Rp ${invoice1.hitungTotal().toStringAsFixed(0)}");
  print("Total invoice member : Rp ${invoice2.hitungTotal().toStringAsFixed(0)}");
}
