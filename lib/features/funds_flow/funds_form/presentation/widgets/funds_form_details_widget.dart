import 'package:flutter/material.dart';

import '../../domain/entities/funds_form_entitie.dart';
import 'funds_form_currency_funds_widget.dart';
import 'funds_form_task_closure_widget.dart';
import 'funds_form_user_widget.dart';

class FundsFormDetailWidget extends StatelessWidget {
  const FundsFormDetailWidget({
    Key? key,
    required this.fundsForm,
    required this.mark,
  }) : super(key: key);

  final FundsFormEntitie fundsForm;
  final bool mark;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 18,
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserFundsWidget(fundsForm: fundsForm),
                const Divider(
                  thickness: 2,
                ),
                CurrencyFundsWidget(fundsForm: fundsForm)
              ],
            ),
          ),
          /*const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          */
          FundsFormTaskClosureWidget(
            checked: mark,
          )
        ],
      ),
    );
  }
}
