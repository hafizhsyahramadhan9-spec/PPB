class ApiCuaca {
  double ambilSuhu(String kota) {
    print('Menghubungi server cuaca...');
    return 0;
  }
}

class MockApiCuaca implements ApiCuaca {
  @override
  double ambilSuhu(String kota) {
    if (kota == "Surabaya") {
      return 28.0;
    } else if (kota == "Sampit") {
      return 28.0;
    } else {
      return 25.0;
    }
  }
}

void tampilkanCuaca(ApiCuaca api, String kota) {
  double suhu = api.ambilSuhu(kota);
  print("Suhu di $kota: $suhu°C");
}

void main() {
  MockApiCuaca mockApi = MockApiCuaca();

  tampilkanCuaca(mockApi, "Surabaya");
  tampilkanCuaca(mockApi, "Sampit");
  tampilkanCuaca(mockApi, "Ketapang");
}
