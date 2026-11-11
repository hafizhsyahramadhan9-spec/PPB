class Pesanan {
  String idPesanan;
  String pelanggan;
  double total;
  String metodeBayar;

  Pesanan({
    required this.idPesanan,
    required this.pelanggan,
    required this.total,
    this.metodeBayar = 'Kasih Ke Bank',
  });

  Pesanan.cod(this.idPesanan, this.pelanggan, this.total)
      : metodeBayar = 'Cass Or Duel';


  void tampilkan() {
    print('[$idPesanan] $pelanggan - Rp $total ($metodeBayar)');
  }
}


void main() {
  var p1 = Pesanan(idPesanan: 'ORD001', pelanggan: 'Hafizh', total: 250000);
  var p2 = Pesanan(idPesanan: 'ORD002', pelanggan: 'Putri', total: 120000, metodeBayar: 'E-Wallet');
  var p3 = Pesanan.cod('ORD003', 'Mochi', 90000);


  p1.tampilkan();
  p2.tampilkan();
  p3.tampilkan();
}
