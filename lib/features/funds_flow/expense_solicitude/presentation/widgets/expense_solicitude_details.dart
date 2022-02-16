import 'package:flutter/material.dart';

import '../../domain/entities/expense_solicitude_entitie.dart';
import 'authorizer_widget.dart';
import 'company_widget.dart';
import 'creator_widget.dart';
import 'currency_widget.dart';
import 'objective_widget.dart';
import 'task_closure_funds_widget.dart';

class ExpenseSolicitudeDetailWidget extends StatelessWidget {
  const ExpenseSolicitudeDetailWidget(
      {Key? key, required this.expenseSolicitude, required this.mark})
      : super(key: key);

  final ExpenseSolicitudeEntitie expenseSolicitude;
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
                AuthorizerWidget(
                  expenseSolicitude: expenseSolicitude,
                ),
                const Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
          CreatorWidget(expenseSolicitude: expenseSolicitude),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          CompanyWidget(expenseSolicitude: expenseSolicitude),
          CurrencyWidget(expenseSolicitude: expenseSolicitude),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          ObjectiveWidget(
            expenseSolicitude: expenseSolicitude,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          TaskClosureFundsWidget(
            checked: mark,
          )
        ],
      ),
    );
  }
}
