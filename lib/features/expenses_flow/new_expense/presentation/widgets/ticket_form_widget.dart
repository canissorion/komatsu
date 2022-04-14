import 'package:flutter/material.dart';

import '../../domain/entities/new_expense_entitie.dart';
import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';

class TicketFormWidget extends StatelessWidget {
  TicketFormWidget({Key? key, required this.newExpense}) : super(key: key);
  final NewExpenseEntitie newExpense;
  final List<String> listConcept = [];
  final List<String> listDetail = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DateSelectorWidget(),
        SizedBox(
          height: 15,
        ),
        FormFieldWidget(
          title: 'Numero de documento',
          keyboard: TextInputType.number,
        ),
        FormFieldWidget(
          title: 'Valor total de la boleta',
          keyboard: TextInputType.number,
        ),
        // ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 15,
        ),
        DescriptionFieldWidget(
          title: 'Descripcion del Gasto',
          textLines: 5,
        ),
      ],
    );
  }
}
