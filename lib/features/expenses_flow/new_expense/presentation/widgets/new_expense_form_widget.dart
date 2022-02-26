import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';

import '../pages/expenses_list_selector_page.dart';
import 'title_and_selector_widget.dart';

class NewExpenseFormWidget extends StatelessWidget {
  NewExpenseFormWidget({
    Key? key,
    required this.newExpense,
  }) : super(key: key);
  final NewExpenseEntitie newExpense;
  final List<String> listCompany = [];

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        for (var i = 0; i < 10; i++) {
          listCompany.add(
            newExpense.data[8].domainParameterValues[i].descriptionShort,
          );
        }
        return Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleAndSelectorWidget(
                    title: 'Empresa Rendición',
                    items: newExpense.data[8].idDomainParameter == 9
                        ? listCompany
                        : [''],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TitleAndSelectorWidget(
                    title: 'Oficina de Ventas:',
                    items: newExpense.data[8].idDomainParameter == 9
                        ? [newExpense.data[8].domainParameterValues.toString()]
                        : [''],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TitleAndSelectorWidget(
                      title: 'Moneda', items: ["hola", "xd"]),
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
                      keyboardType: TextInputType.text,
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
      },
    );
  }
}
