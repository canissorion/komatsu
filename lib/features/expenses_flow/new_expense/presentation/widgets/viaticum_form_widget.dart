import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expenses_flow/new_expense/presentation/widgets/obtain_data_widget.dart';
import '../../domain/entities/new_expense_entitie.dart';
import 'date_selector_widget.dart';
import 'description_field_widget.dart';
import 'form_field_widget.dart';
import 'title_and_selector_widget.dart';

class ViaticumFormWidget extends StatelessWidget {
  ViaticumFormWidget({
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
          title: 'Tipo de Viatico',
        ),
        const FormFieldWidget(
          title: 'Descripcion del viatico',
        ),
        const FormFieldWidget(
          title: 'Valor total',
          keyboard: TextInputType.number,
        ),
        const FormFieldWidget(
          title: 'Objeto de Imputacion',
        ),
        const FormFieldWidget(
          title: 'CECO',
        ),
        const FormFieldWidget(
          title: 'Cuenta',
        ),
        ObtainData(
          codes: "CONCEPTO_GASTOS",
          list: listConcept,
          newExpenseData: newExpense,
          title: 'Concepto del gasto',
          titleColor: Colors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        ObtainData(
          codes: "DETALLE_GASTO",
          list: listDetail,
          newExpenseData: newExpense,
          title: 'Detalle gasto',
          titleColor: Colors.white,
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