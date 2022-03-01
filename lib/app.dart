import 'package:flutter/material.dart';

import 'core/utils/komatsu_colors.dart';
import 'features/expenses_flow/new_expense/presentation/pages/new_expense_page.dart';
import 'features/expenses_flow/pending_expenses/presentation/pages/pending_expense_page.dart';
import 'features/funds_flow/funds_form/presentation/pages/funds_form_page.dart';
import 'features/funds_flow/pending_funds/presentation/pages/pending_funds_page.dart';
import 'features/login_flow/login/presentation/pages/login_page.dart';
import 'features/login_flow/login/presentation/pages/login_page_apart.dart';
import 'features/order_release_flow/order_release/presentation/pages/order_release_page.dart';
import 'shared/presentation/widgets/app_pendings_box_widget.dart';
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                child: const Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  PendingsBox(
                    gradientOne: Color.fromRGBO(45, 179, 152, 1),
                    gradientTwo: Color.fromRGBO(60, 200, 172, 1),
                    text: 'Aprobados',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  PendingsBox(
                    gradientOne: Color.fromRGBO(230, 93, 74, 1),
                    gradientTwo: Color.fromRGBO(246, 128, 111, 1),
                    text: 'Pendientes',
                    numberColor: Color.fromRGBO(246, 128, 111, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.login,
                                  color: customBlue,
                                  size: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Login',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
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
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.article_outlined,
                                  color: customBlue,
                                  size: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Formulario \nfondos',
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
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
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.attach_money,
                                  color: customBlue,
                                  size: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Fondos',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
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
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.calculate,
                                  color: customBlue,
                                  size: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Rendiciones',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const NewExpensePage();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add_task,
                                  color: customBlue,
                                  size: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Nueva rendición',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const OrderReleasePage();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.checklist,
                                  color: customBlue,
                                  size: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Liberar ordenes\nde compra',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginPageApart();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.local_gas_station,
                                  color: customBlue,
                                  size: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Login page',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 160,
                        height: 135,
                        child: Card(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginPageApart();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                /*Icon(
                                  Icons.pause_presentation,
                                  color: customBlue,
                                  size: 60,
                                ),*/
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
