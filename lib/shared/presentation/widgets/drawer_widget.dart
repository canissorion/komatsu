import 'package:flutter/material.dart';

import '../../../app.dart';
import '../../../core/utils/komatsu_colors.dart';
import '../../../features/expenses_flow/new_expense/presentation/pages/new_expense_page.dart';
import '../../../features/expenses_flow/pending_expenses/presentation/pages/pending_expense_page.dart';
import '../../../features/funds_flow/funds_form/presentation/pages/funds_form_page.dart';
import '../../../features/funds_flow/pending_funds/presentation/pages/pending_funds_page.dart';
import '../../../features/order_release_flow/order_release/presentation/pages/order_release_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: customBlue),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              const CircleAvatar(
                backgroundColor: customBlue,
                radius: 30,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 45,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Moises Bravo',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'moises.bravo@global.komatsu',
                    style: TextStyle(color: Colors.grey[600]),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return App(flavor: 'Development');
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              ExpansionTile(
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                title: Row(
                  children: const [
                    Icon(Icons.insert_chart),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Rendiciones')
                  ],
                ),
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return PendingExpensePage();
                            },
                          ),
                        );
                      },
                      child: Text('Rendiciones de gastos')),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NewExpensePage();
                            },
                          ),
                        );
                      },
                      child: Text('Nueva Rendicion')),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              ExpansionTile(
                title: Row(
                  children: const [
                    Icon(Icons.attach_money),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Fondos')
                  ],
                ),
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const PendingFundsPage();
                            },
                          ),
                        );
                      },
                      child: Text('Bandeja de Fondos')),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FundsFormPage();
                            },
                          ),
                        );
                      },
                      child: Text('Solicitud de Fondos')),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              ExpansionTile(
                title: Row(
                  children: const [
                    Icon(Icons.checklist),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Ordenes de Compra')
                  ],
                ),
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const OrderReleasePage();
                            },
                          ),
                        );
                      },
                      child: Text('Liberar Ordenes de Compra')),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
