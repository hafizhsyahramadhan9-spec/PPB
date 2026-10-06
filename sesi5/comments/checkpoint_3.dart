class Produk {
  String nama;

  int harga;
  Produk(this.nama, this.harga);

  void tampilkanProduk() {
    print("Produk: $nama");
    print("Harga: Rp$harga");
  }
}

void main() {
  var produk = Produk("PC", 230000000);
  produk.tampilkanProduk();
}
