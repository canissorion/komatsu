import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/date_selector_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/description_field_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/form_field_widget.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/title_and_selector_widget.dart';

class CreditNoteFormWidget extends StatelessWidget {
  const CreditNoteFormWidget({
    Key? key,
  }) : super(key: key);

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
        ),
        FormFieldWidget(
          title: 'RUT',
        ),
        FormFieldWidget(
          title: 'Total',
        ),
        FormFieldWidget(
          title: 'Base Excenta',
        ),
        FormFieldWidget(
          title: 'Base Afecta',
        ),
        FormFieldWidget(
          title: 'IVA',
        ),
        TitleAndSelectorWidget(
          title: 'Concepto del Gasto',
          titleColor: Colors.white,
          items: ['REUNIONES DE TRABAJO Y CLIENTES'],
        ),
        SizedBox(
          height: 15,
        ),
        TitleAndSelectorWidget(
          title: 'Detalle Gasto',
          titleColor: Colors.white,
          items: ['ALMUERZOS Y CENAS'],
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
