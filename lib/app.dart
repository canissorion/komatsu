import 'package:flutter/material.dart';

import 'features/expenses_flow/pending_expenses/presentation/pages/pending_expense_page.dart';
import 'features/funds_flow/funds_form/presentation/pages/funds_form_page.dart';
import 'features/funds_flow/pending_funds/presentation/pages/pending_funds_page.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FundsFormPage();
                    },
                  ),
                );
              },
              child: const Text('Formulario fondos'),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PendingFundsPage();
                    },
                  ),
                );
              },
              child: const Text('Fondos'),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PendingExpensePage();
                    },
                  ),
                );
              },
              child: const Text('rendiciones'),
            ),
          ],
        ),
      ),
    );
  }
}
