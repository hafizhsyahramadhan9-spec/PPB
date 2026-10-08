enum JenisKontrak { baik, normal, melawan }

void main() {
  var kontrak = JenisKontrak.melawan;
  print("Jenis kontrak karyawan: ${kontrak.name}");
}
