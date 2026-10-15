import 'help.dart' deferred as help;

Future<void> main() async {
  print("Tulung aplikasi bermasalah");

  await help.loadLibrary();
  await help.tampilkanBantuan();
}
