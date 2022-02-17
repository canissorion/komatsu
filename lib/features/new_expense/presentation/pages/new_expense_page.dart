import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/new_expense/presentation/widgets/expense_resume_close_widget.dart';

import '../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../shared/presentation/widgets/drawer_widget.dart';
import '../widgets/form_steps_widget.dart';
import '../widgets/title_and_selector_widget.dart';
import 'document_selected_list_page.dart';
import 'expenses_list_selector_page.dart';

class NewExpensePage extends StatelessWidget {
  const NewExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBarWidget(),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              const FormStepWidget(),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: const TabBarView(
                  children: [
                    NewExpenseFormWidget(),
                    DocumentSelectedListPage(),
                    ExpenseResumeCloseWidget()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewExpenseFormWidget extends StatelessWidget {
  const NewExpenseFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleAndSelectorWidget(
                title: 'Empresa Rendición',
                items: ['Komatsu Cummings Chile Ltda'],
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleAndSelectorWidget(
                title: 'Oficina de Ventas:',
                items: ['Default'],
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleAndSelectorWidget(
                title: 'Moneda',
                items: ['CLP'],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Objetivo del Gasto',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                ),
              ),
              const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                minLines: 3,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seleccion de Vales a Rendir',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ExpenseListSelectorPage();
                      },
                    ),
                  );
                },
                child: const Text('AGREGAR +'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
