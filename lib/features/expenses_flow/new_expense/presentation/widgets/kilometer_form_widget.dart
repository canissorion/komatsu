import 'package:flutter/material.dart';

import '../../domain/entities/new_expense_entitie.dart';
import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';

class KilometerFormWidget extends StatelessWidget {
  KilometerFormWidget({
    Key? key,
    required this.newExpense,
  }) : super(key: key);
  final NewExpenseEntitie newExpense;
  final List<String> listConcept = [];
  final List<String> listDetail = [];
  final List<String> listCurrency = [];

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
          title: 'Kilometros recorridos',
          keyboard: TextInputType.number,
        ),
        FormFieldWidget(
          title: 'Divisa x Kilometros',
          keyboard: TextInputType.number,
        ),
        SizedBox(
          height: 15,
        ),
        FormFieldWidget(
          title: 'Total a pagar',
          keyboard: TextInputType.number,
        ),
        FormFieldWidget(
          title: 'Cuenta',
          keyboard: TextInputType.number,
        ),
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
