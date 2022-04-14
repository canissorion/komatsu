import 'package:flutter/material.dart';

import '../../domain/entities/new_expense_entitie.dart';
import '../../domain/entities/new_expense_id_domain_parameter_value_entitie.dart';
import 'title_and_selector_widget.dart';

class ObtainData extends StatelessWidget {
  const ObtainData({
    Key? key,
    required this.codes,
    required this.list,
    required this.newExpenseData,
    required this.title,
    this.titleColor,
    required this.value,
    required this.change,
    required this.data,
  }) : super(key: key);
  final String codes;
  final NewExpenseEntitie newExpenseData;
  final List<DomainParameterValueEntitie> list;
  final String title;
  final Color? titleColor;
  final Function change;
  final int? value;
  final int data;
  @override
  Widget build(BuildContext context) {
    return TitleAndSelectorWidget(
      title: title,
      items: newExpenseData.data[data].domainParameterValues,
      titleColor: titleColor,
      value: value,
      change: change,
    );
  }
}
