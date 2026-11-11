
class Produk {
  String kode;
  String nama;
  int harga;
  int stok;

  Produk(this.kode, this.nama, this.harga, this.stok);

  void tambahStok(int jumlah) {
    stok += jumlah;
    print("Stok ditambah $jumlah, stok sekarang: $stok");
  }

  void kurangiStok(int jumlah) {
    if (stok >= jumlah) {
      stok -= jumlah;
      print("Stok dikurangi $jumlah, stok sekarang: $stok");
    } else {
      print("Stok tidak mencukupi!");
    }
  }

  void tampilkanInfo() {
    print("[$kode] $nama - Rp $harga | Stok: $stok");
  }
}

void main() {
  Produk produk1 = Produk("P001", "Laptop Asus", 9500000, 5);
  Produk produk2 = Produk("P002", "Mouse Logitech", 150000, 10);

  produk1.tampilkanInfo();
  produk2.tampilkanInfo();

  print("");

  produk1.tambahStok(3);

  produk1.kurangiStok(10);

  print("");

  produk2.tambahStok(5);
  produk2.kurangiStok(2);

  print("");

  produk1.tampilkanInfo();
  produk2.tampilkanInfo();
}
