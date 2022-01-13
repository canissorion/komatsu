import 'package:flutter/material.dart';

import 'features/rendiciones_pendientes/presentation/pages/rendiciones_pendientes_page.dart';

class App extends StatelessWidget {
  final String flavor;

  const App({Key? key, required this.flavor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$flavor Komatsu'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const RendicionesPendientesPage();
                },
              ),
            );
          },
          child: const Text('rendiciones'),
        ),
      ),
    );
  }
}
