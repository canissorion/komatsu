import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kcc_mobile_app/features/login_flow/login/presentation/pages/login_page_apart.dart';

import 'app.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  await di.init();
  await dotenv.load(fileName: '.env.dev');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPageApart(
        flavor: 'Development',
      ),
    ),
  );
}
