import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';
import '../pages/expenses_list_selector_page.dart';
import 'title_and_selector_widget.dart';

class NewExpenseFormWidget extends StatelessWidget {
  const NewExpenseFormWidget({
    Key? key,
    required this.newExpense,
  }) : super(key: key);
  final NewExpenseEntitie newExpense;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndSelectorWidget(
                title: 'Empresa Rendición',
                items: [newExpense.company.companyName],
              ),
              const SizedBox(
                height: 10,
              ),
              TitleAndSelectorWidget(
                title: 'Oficina de Ventas:',
                items: [newExpense.company.companyoffice],
              ),
              const SizedBox(
                height: 10,
              ),
              TitleAndSelectorWidget(
                title: 'Moneda',
                items: [newExpense.currency.currencyCode],
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
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const TextField(
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
