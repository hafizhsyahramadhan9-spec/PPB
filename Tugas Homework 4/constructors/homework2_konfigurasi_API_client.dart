class ApiClient {
  final String baseUrl;
  final int timeoutDetik;
  final bool useHttps;

  ApiClient(this.baseUrl, {this.timeoutDetik = 30, this.useHttps = true});

  ApiClient.dev(String host)
      : baseUrl = host,
        timeoutDetik = 5,
        useHttps = false;

  void cetakStatus() {
    print('Base URL: $baseUrl | Timeout: ${timeoutDetik}s | HTTPS: $useHttps');
  }
}

void main() {
  var production = ApiClient('api.kampus.ac.id');
  var development = ApiClient.dev('localhost:8080');

  production.cetakStatus();
  development.cetakStatus();
}
