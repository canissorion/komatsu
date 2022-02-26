import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/obtain_data_widget.dart';
import '../../domain/entities/new_expense_entitie.dart';

import '../pages/expenses_list_selector_page.dart';
import 'title_and_selector_widget.dart';

class NewExpenseFormWidget extends StatelessWidget {
  NewExpenseFormWidget({
    Key? key,
    required this.newExpense,
  }) : super(key: key);
  final NewExpenseEntitie newExpense;
  final List<String> listCompany = [];
  final List<String> listOffice = [];
  final List<String> listCurrency = [];

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ObtainData(
                    codes: "EMPRESA",
                    newExpenseData: newExpense,
                    list: listCompany,
                    title: 'Empresa Rendición',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ObtainData(
                    codes: "OFICINA_VENTA",
                    newExpenseData: newExpense,
                    list: listOffice,
                    title: 'Oficina de Ventas',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ObtainData(
                    codes: "MONEDA",
                    newExpenseData: newExpense,
                    list: listCurrency,
                    title: 'Moneda',
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
      },
    );
  }
}
