import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/domain/entities/new_expense_entitie.dart';
import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';
import 'title_and_selector_widget.dart';

class HonoraryTicketFormWidget extends StatelessWidget {
  const HonoraryTicketFormWidget({
    Key? key,
    required this.newExpense,
  }) : super(key: key);
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
          title: 'Numero de documento',
        ),
        const FormFieldWidget(
          title: 'Monto Pagado',
        ),
        const FormFieldWidget(
          title: 'Retencion',
        ),
        const FormFieldWidget(
          title: 'Total Boleta',
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
