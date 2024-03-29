import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app.dart';
import '../../../core/utils/komatsu_colors.dart';
import '../../../core/utils/navigator_utils.dart';
import '../../../features/expenses_flow/new_expense/presentation/pages/new_expense_page.dart';
import '../../../features/expenses_flow/pending_expenses/presentation/pages/pending_expense_page.dart';
import '../../../features/funds_flow/funds_form/presentation/pages/funds_form_page.dart';
import '../../../features/funds_flow/pending_funds/presentation/pages/pending_funds_page.dart';
import '../../../features/hes_release_flow/features/hes_release/presentation/pages/hes_dashboard_page.dart';
import '../../../features/login_flow/login/presentation/bloc/login_bloc.dart';
import '../../../features/order_release_flow/order_release/presentation/pages/order_release_page.dart';

// Ventana lateral ccon menu
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is Loaded) {
          BlocProvider.of<LoginBloc>(
            context,
            listen: false,
          ).add(UserLoged());
          return const CircularProgressIndicator();
        } else {
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
                      children: [
                        Text(
                          state.user!.name!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          state.user!.preferredUsername!,
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    GestureDetector(
                      onTap: () {
                        pushAndReplaceToPage(
                          context,
                          const App(flavor: 'Development'),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 20),
                        child: Row(
                          children: const [
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
                    GestureDetector(
                      onTap: () {
                        pushToPage(context, const HesDashboardPage());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                        child: Row(
                          children: const [
                            Icon(Icons.check_rounded),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Liberacion HES',
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
                          Text('Rendicion de gastos')
                        ],
                      ),
                      children: [
                        GestureDetector(
                          onTap: () {
                            pushAndReplaceToPage(
                              context,
                              const PendingExpensePage(),
                            );
                          },
                          child: const Text('Bandeja de Aprobacion'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            pushAndReplaceToPage(
                              context,
                              const NewExpensePage(),
                            );
                          },
                          child: const Text('Nueva Rendicion'),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                    ExpansionTile(
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      title: Row(
                        children: const [
                          Icon(Icons.attach_money),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Solicitud de Fondos')
                        ],
                      ),
                      children: [
                        GestureDetector(
                          onTap: () {
                            pushAndReplaceToPage(
                              context,
                              const PendingFundsPage(),
                            );
                          },
                          child: const Text('Bandeja de Aprobacion'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            pushAndReplaceToPage(
                              context,
                              const FundsFormPage(),
                            );
                          },
                          child: const Text('Nueva Solicitud'),
                        ),
                        const SizedBox(
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
                          Text('Liberacion OC')
                        ],
                      ),
                      children: [
                        GestureDetector(
                          onTap: () {
                            pushAndReplaceToPage(
                              context,
                              const OrderReleasePage(),
                            );
                          },
                          child: const Text('Liberacion orden de compra'),
                        ),
                        const SizedBox(
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
      },
    );
  }
}
