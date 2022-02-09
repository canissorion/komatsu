import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/presentation/widgets/currency_widget.dart';
import 'package:kcc_mobile_app/features/Flujo_fondos/expense_solicitude/presentation/widgets/objective_widget.dart';

import '../../domain/entities/expense_solicitude_entitie.dart';
import 'authorizer_widget.dart';
import 'company_widget.dart';
import 'creator_widget.dart';

class ExpenseSolicitudeDetailWidget extends StatelessWidget {
  const ExpenseSolicitudeDetailWidget({
    Key? key,
    required this.expenseSolicitude,
  }) : super(key: key);

  final ExpenseSolicitudeEntitie expenseSolicitude;

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
        ],
      ),
    );
  }
}
