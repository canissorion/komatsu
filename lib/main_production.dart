import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const App(flavor: 'Production'));
}
