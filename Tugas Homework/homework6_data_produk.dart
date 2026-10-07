void produk({String nama = "", int harga = 0}) {
  print("Produk: $nama");
  print("Harga: Rp$harga");
}

void main() {
  produk(harga: 7500000, nama: "RTX 5090");
}
