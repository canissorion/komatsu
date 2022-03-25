import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/bloc/new_expense_bloc.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../injection_container.dart';
import '../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../domain/entities/new_expense_entitie.dart';
import '../widgets/credit_note_form_widget.dart';
import '../widgets/honorary_form_widget.dart';
import '../widgets/invoice_form_widget.dart';
import '../widgets/kilometer_form_widget.dart';
import '../widgets/sub_document_card_widget.dart';
import '../widgets/ticket_form_widget.dart';
import '../widgets/viaticum_form_widget.dart';
import 'document_detail_form_page.dart';

class SubDocumentSelectorListPage extends StatelessWidget {
  const SubDocumentSelectorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      backgroundColor: customBlue,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => sl<NewExpenseBloc>(),
          )
        ],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<NewExpenseBloc, NewExpenseState>(
              builder: (context, state) {
                if (state is EmptyNewExpenses) {
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
                } else if (state is ErrorNewExpenses) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                } else if (state is LoadingNewExpenses) {
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
                      const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          'SELECCIONE TIPO DE DOCUMENTO',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Column(
                            children: [
                              SubDocumentCardWidget(
                                title: 'BOLETA DE GASTOS Y OTROS',
                                page: DocumentDetailFormPage(
                                  form: TicketFormWidget(
                                    newExpense: newExpense,
                                  ),
                                ),
                              ),
                              SubDocumentCardWidget(
                                title: 'FACTURA',
                                page: DocumentDetailFormPage(
                                  form: InvoiceFormWidget(
                                    newExpense: newExpense,
                                  ),
                                ),
                              ),
                              SubDocumentCardWidget(
                                title: 'NOTA DE CREDITO',
                                page: DocumentDetailFormPage(
                                  form: CreditNoteFormWidget(
                                    newExpense: newExpense,
                                  ),
                                ),
                              ),
                              SubDocumentCardWidget(
                                title: 'VIATICOS',
                                page: DocumentDetailFormPage(
                                  form: ViaticumFormWidget(
                                    newExpense: newExpense,
                                  ),
                                ),
                              ),
                              SubDocumentCardWidget(
                                title: 'BOLETA DE HONORARIO',
                                page: DocumentDetailFormPage(
                                  form: HonoraryTicketFormWidget(
                                    newExpense: newExpense,
                                  ),
                                ),
                              ),
                              SubDocumentCardWidget(
                                title: 'KILOMETRAJE',
                                page: DocumentDetailFormPage(
                                  form: KilometerFormWidget(
                                    newExpense: newExpense,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
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
