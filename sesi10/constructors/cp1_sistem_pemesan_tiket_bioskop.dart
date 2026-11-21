class Tiket {
  final String judul;
  final String studio;
  final int harga;


  const Tiket(this.judul, this.studio, this.harga);


  Tiket.vip(this.judul, this.studio) : harga = 150000;

  Tiket.promo(String judul, String studio) : this(judul, studio, 75000);

  factory Tiket.buat(String judul, String kategori) {
    if (kategori == 'VIP') {
      return Tiket.vip(judul, 'Premiere');
    } else if (kategori == 'Promo') {
      return Tiket.promo(judul, 'Studio 2');
    }
    return Tiket(judul, 'Studio 1', 40000);
  }


  void tampilkan() {
    print('[$studio] $judul - Rp $harga');
  }
}


void main() {
  var t1 = Tiket('Interstellar', 'Studio 1', 40000);

  var t2 = Tiket.vip('Oppenheimer', 'Premiere');

  var t3 = Tiket.promo('Avatar 2', 'Studio 2');

  var t4 = Tiket.buat('Dune: Part Two', 'VIP');

  t1.tampilkan();
  t2.tampilkan();
  t3.tampilkan();
  t4.tampilkan();

  print('---');

  var judulFilmList = ['Batman', 'Spiderman'];
  var daftarVip = judulFilmList.map((judul) => Tiket.vip(judul, 'Premiere')).toList();
  for (var tiket in daftarVip) {
    tiket.tampilkan();
  }
}
