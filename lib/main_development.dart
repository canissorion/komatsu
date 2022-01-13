import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env.dev');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(flavor: 'Development'),
    ),
  );
}
