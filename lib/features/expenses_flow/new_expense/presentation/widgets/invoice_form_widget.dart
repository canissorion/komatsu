import 'package:flutter/material.dart';
import '../../domain/entities/new_expense_entitie.dart';
import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';
import 'title_and_selector_widget.dart';

class InvoiceFormWidget extends StatelessWidget {
  const InvoiceFormWidget({
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
          title: 'Numero de Factura',
        ),
        const FormFieldWidget(
          title: 'Rut Emisor',
        ),
        const FormFieldWidget(
          title: 'Valor total Factura',
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
          items: newExpense.data[8].idDomainParameter == 9
              ? [newExpense.data[8].domainParameterValues.toString()]
              : [''],
        ),
        const SizedBox(
          height: 15,
        ),
        TitleAndSelectorWidget(
          title: 'Detalle Gasto',
          titleColor: Colors.white,
          items: newExpense.data[8].idDomainParameter == 9
              ? [newExpense.data[8].domainParameterValues.toString()]
              : [''],
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
