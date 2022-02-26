import 'package:flutter/material.dart';

import '../../domain/entities/new_expense_entitie.dart';
import 'title_and_selector_widget.dart';

class ObtainData extends StatelessWidget {
  const ObtainData({
    Key? key,
    required this.codes,
    required this.list,
    required this.newExpenseData,
    required this.title,
    this.titleColor,
  }) : super(key: key);
  final String codes;
  final NewExpenseEntitie newExpenseData;
  final List<String> list;
  final String title;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < newExpenseData.data.length; i++) {
      if (newExpenseData.data[i].code == codes) {
        for (var j = 0;
            j < newExpenseData.data[i].domainParameterValues.length;
            j++) {
          list.add(
            newExpenseData.data[i].domainParameterValues[j].descriptionShort,
          );
        }
      }
    }
    return TitleAndSelectorWidget(
      title: title,
      items: list,
      titleColor: titleColor,
    );
  }
}
