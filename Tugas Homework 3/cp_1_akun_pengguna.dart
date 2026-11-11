class User {
  String username;
  String email;
  String role;
  bool isActive;

  User({
    required this.username,
    required this.email,
    this.role = "member",
    this.isActive = true,
  });

  User.admin(String username, String email)
      : username = username,
        email = email,
        role = "admin",
        isActive = true;

  User.guest()
      : username = "guest",
        email = "-",
        role = "viewer",
        isActive = true;

  void tampilkanProfil() {
    print("$username | $email | $role | aktif: $isActive");
  }
}

void main() {
  User member = User(
    username: "budi",
    email: "ytta@mail.com",
  );

  User admin = User.admin(
    "siti",
    "yaat@kantor.com",
  );

  User guest = User.guest();

  member.tampilkanProfil();
  admin.tampilkanProfil();
  guest.tampilkanProfil();
}
