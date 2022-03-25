import 'package:flutter/material.dart';

import '../../domain/entities/new_expense_entitie.dart';
import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';
import 'obtain_data_widget.dart';

class TicketFormWidget extends StatelessWidget {
  TicketFormWidget({Key? key, required this.newExpense}) : super(key: key);
  final NewExpenseEntitie newExpense;
  final List<String> listConcept = [];
  final List<String> listDetail = [];

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
          keyboard: TextInputType.number,
        ),
        const FormFieldWidget(
          title: 'Valor total de la boleta',
          keyboard: TextInputType.number,
        ),
        // ObtainData(
        //   codes: "CONCEPTO_GASTOS",
        //   list: listConcept,
        //   newExpenseData: newExpense,
        //   title: 'Concepto del gasto',
        //   titleColor: Colors.white,
          
        // ),
        const SizedBox(
          height: 15,
        ),
        // ObtainData(
        //   codes: "DETALLE_GASTO",
        //   list: listDetail,
        //   newExpenseData: newExpense,
        //   title: 'Detalle gasto',
        //   titleColor: Colors.white,
        // ),
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
