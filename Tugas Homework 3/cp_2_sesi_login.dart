class SesiLogin {
  final String userId;
  late String token;
  bool isOnline = false;
  String? waktuLogout;

  SesiLogin({required this.userId});

  void login() {
    token = "TKN-" + userId;
    isOnline = true;
  }

  void logout(String waktu) {
    isOnline = false;
    waktuLogout = waktu;
  }

  void status() {
    print("User ID      : $userId");
    print("Token        : $token");
    print("Status Online: $isOnline");
    print("Waktu Logout : ${waktuLogout ?? '-'}");
    print("-------------------------");
  }
}

void main() {
  SesiLogin sesi1 = SesiLogin(userId: "USR001");
  SesiLogin sesi2 = SesiLogin(userId: "USR002");

  sesi1.login();
  sesi1.logout("11 November 2026, 13:00");

  sesi2.login();

  print("===== SESI LOGIN 1 =====");
  sesi1.status();

  print("===== SESI LOGIN 2 =====");
  sesi2.status();
}
