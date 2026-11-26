// Superclass: Layanan Pengiriman Ekspedisi Dasar
class LayananPengiriman {
  int _beratGram = 1000;


  int get beratGram => _beratGram;


  // Setter dengan parameter int
  set beratGram(int nilai) {
    _beratGram = nilai;
  }


  // Method mengembalikan num
  num hitungTarif() => _beratGram * 12.5;


  // Method menerima Object umum
  void prosesTujuan(Object alamat) {
    print('Memproses tujuan umum: $alamat');
  }
}


// Subclass: Pengiriman Ekspres
class PengirimanEkspres extends LayananPengiriman {
  // 1. Memperluas tipe parameter setter dari int menjadi num (menerima int & double)
  @override
  set beratGram(num nilai) {
    super.beratGram = nilai.round();
  }


  // 2. Mempersempit tipe kembalian method dari num menjadi int
  @override
  int hitungTarif() => (beratGram * 15.0).toInt();


  // 3. Mempersempit tipe parameter dari Object menjadi String dengan covariant
  @override
  void prosesTujuan(covariant String alamatLengkap) {
    print('Ekspres mengirim langsung ke alamat: "$alamatLengkap"');
  }
}


void main() {
  var ekspres = PengirimanEkspres();


  // 1. Uji setter yang diperluas (menerima pecahan desimal num)
  ekspres.beratGram = 1250.75;
  print('Berat Paket : ${ekspres.beratGram} gram');
  print('Total Tarif : Rp ${ekspres.hitungTarif()}');

  ekspres.prosesTujuan('Jl. Merdeka No. 45, Ketapang');


  print('--- Pengujian Error Covariant Runtime ---');
  try {
    LayananPengiriman layanan = ekspres;
    layanan.prosesTujuan(987654);
  } catch (e) {
    print('Error covariant tertangkap: ${e.runtimeType} (Tipe data bukan String)');
  }
}
