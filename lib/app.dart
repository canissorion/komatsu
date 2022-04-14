import 'package:flutter/material.dart';

import 'core/utils/navigator_utils.dart';
import 'features/expenses_flow/pending_expenses/presentation/pages/pending_expense_page.dart';
import 'features/funds_flow/pending_funds/presentation/pages/pending_funds_page.dart';
import 'features/order_release_flow/order_release/presentation/pages/order_release_page.dart';
import 'shared/presentation/widgets/appbar_widget.dart';
import 'shared/presentation/widgets/drawer_widget.dart';

class App extends StatelessWidget {
  final String flavor;

  const App({Key? key, required this.flavor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Menu",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ExpansionTile(
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  onExpansionChanged: (boleano) {
                    pushToPage(context, const PendingExpensePage());
                  },
                  title: Row(
                    children: const [
                      Icon(Icons.insert_chart),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Rendicion de gastos (1)')
                    ],
                  ),
                ),
                ExpansionTile(
                  onExpansionChanged: (data) {
                    pushToPage(context, const PendingFundsPage());
                  },
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  title: Row(
                    children: const [
                      Icon(Icons.insert_chart),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Solicitud de fondos (1)')
                    ],
                  ),
                ),
                ExpansionTile(
                  onExpansionChanged: (data) {
                    pushToPage(context, const OrderReleasePage());
                  },
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  title: Row(
                    children: const [
                      Icon(Icons.insert_chart),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Liberacion orden de compra (1)')
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
