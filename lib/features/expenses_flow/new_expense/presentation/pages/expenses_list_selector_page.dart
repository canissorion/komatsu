import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/core/utils/number_format.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';
import '../bloc/new_expense_bloc.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';

class ExpenseListSelectorPage extends StatelessWidget {
  const ExpenseListSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => sl<NewExpenseBloc>(),
          )
        ],
        child: Column(
          children: [
            BlocBuilder<NewExpenseBloc, NewExpenseState>(
              builder: (context, state) {
                if (state is Emptyy) {
                  BlocProvider.of<NewExpenseBloc>(
                    context,
                    listen: false,
                  ).add(GetNewExpenseEvent());
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: const Center(
                      child: Text('No hay Información'),
                    ),
                  );
                } else if (state is Errorr) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                } else if (state is Loadingg) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    ),
                  );
                } else {
                  final NewExpenseEntitie newExpense = state.newExpense!;
                  return Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: customBlue,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 70,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              color: Colors.white,
                              child: Table(
                                border: TableBorder.all(
                                  color: customBlue,
                                  width: 2,
                                ),
                                columnWidths: const {
                                  0: FlexColumnWidth(2),
                                  1: FlexColumnWidth(4),
                                  2: FlexColumnWidth(3),
                                  3: FlexColumnWidth(2),
                                  4: FlexColumnWidth(4),
                                },
                                children: [
                                  TableRow(
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                    children: const [
                                      SizedBox(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.0, bottom: 8),
                                        child: Center(child: Text('Folio')),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.0, bottom: 8),
                                        child: Center(child: Text('Empresa')),
                                      ),
                                      SizedBox(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.0, bottom: 8),
                                        child: Center(child: Text('Monto')),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: false,
                                        onChanged: (bool? value) {},
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(
                                          child: Text(
                                            newExpense.invoiceNumber.toString(),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(
                                          child: Text(
                                            newExpense.company.companyId
                                                .toString(),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(
                                          child: Text(
                                              newExpense.currency.currencyCode),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(
                                          child: Text(
                                            numberFormat(
                                              newExpense
                                                  .currency.currencyAmount,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: false,
                                        onChanged: (bool? value) {},
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child:
                                            Center(child: Text('37000000002')),
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(child: Text('3001')),
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(child: Text('CLP')),
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(child: Text('888888')),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: false,
                                        onChanged: (bool? value) {},
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child:
                                            Center(child: Text('37000000002')),
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(child: Text('3001')),
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(child: Text('CLP')),
                                      ),
                                      const TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Center(child: Text('888888')),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Seleccionar'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
