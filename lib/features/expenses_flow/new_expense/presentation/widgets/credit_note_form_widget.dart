import 'package:flutter/material.dart';

import '../../domain/entities/new_expense_entitie.dart';

import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';

class CreditNoteFormWidget extends StatelessWidget {
  CreditNoteFormWidget({
    Key? key,
    required this.newExpense,
  }) : super(key: key);
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
          title: 'Numero de credito',
          keyboard: TextInputType.number,
        ),
        FormFieldWidget(
          title: 'RUT',
          keyboard: TextInputType.number,
        ),
        FormFieldWidget(
          title: 'Total',
          keyboard: TextInputType.number,
        ),
        FormFieldWidget(
          title: 'Base Excenta',
        ),
        FormFieldWidget(
          title: 'Base Afecta',
        ),
        FormFieldWidget(
          title: 'IVA',
          keyboard: TextInputType.number,
        ),
        // ObtainData(
        //   codes: "CONCEPTO_GASTOS",
        //   list: listConcept,
        //   newExpenseData: newExpense,
        //   title: 'Concepto del gasto',
        //   titleColor: Colors.white,
        // ),
        SizedBox(
          height: 15,
        ),
        // ObtainData(
        //   codes: "DETALLE_GASTO",
        //   list: listDetail,
        //   newExpenseData: newExpense,
        //   title: 'Detalle gasto',
        //   titleColor: Colors.white,
        // ),
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
