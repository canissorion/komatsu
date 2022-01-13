import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App extends StatelessWidget {
  final String flavor;

  const App({Key? key, required this.flavor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: flavor,
      home: Scaffold(
        appBar: AppBar(
          title: Text('$flavor Komatsu'),
        ),
        body: Center(
          child: Text(dotenv.env['test'] ?? 'test env Not found'),
        ),
      ),
    );
  }
}
