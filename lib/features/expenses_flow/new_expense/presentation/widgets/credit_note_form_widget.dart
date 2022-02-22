import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';
import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';
import 'title_and_selector_widget.dart';

class CreditNoteFormWidget extends StatelessWidget {
  const CreditNoteFormWidget({Key? key, required this.newExpense})
      : super(key: key);
  final NewExpenseEntitie newExpense;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DateSelectorWidget(),
        const SizedBox(
          height: 15,
        ),
        const FormFieldWidget(
          title: 'Numero de credito',
        ),
        const FormFieldWidget(
          title: 'RUT',
        ),
        const FormFieldWidget(
          title: 'Total',
        ),
        const FormFieldWidget(
          title: 'Base Excenta',
        ),
        const FormFieldWidget(
          title: 'Base Afecta',
        ),
        const FormFieldWidget(
          title: 'IVA',
        ),
        TitleAndSelectorWidget(
          title: 'Concepto del Gasto',
          titleColor: Colors.white,
          items: [newExpense.ticketForm.expenseConcept],
        ),
        const SizedBox(
          height: 15,
        ),
        TitleAndSelectorWidget(
          title: 'Detalle Gasto',
          titleColor: Colors.white,
          items: [newExpense.ticketForm.expenseDetail],
        ),
        const SizedBox(
          height: 15,
        ),
        const DescriptionFieldWidget(
          title: 'Descripcion del Gasto',
          textLines: 5,
        ),
      ],
    );
  }
}
