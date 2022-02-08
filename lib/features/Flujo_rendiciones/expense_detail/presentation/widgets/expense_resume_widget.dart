import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

import '../../domain/entities/expense_detail_entitie.dart';

class ExpenseResumeWidget extends StatelessWidget {
  const ExpenseResumeWidget({
    Key? key,
    required this.expenseDetail,
  }) : super(key: key);

  final ExpenseDetailEntitie expenseDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Resumen de rendición',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Gastos',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'IVA',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Retención',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Vales',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Saldo por pagar al trabajador',
                    style: TextStyle(color: customBlue),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$ ${expenseDetail.expediture.amount}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${expenseDetail.expediture.taxes}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${expenseDetail.expediture.retentionAmount}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${expenseDetail.expediture.vales}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${expenseDetail.expediture.balancePayable}',
                  ),
                ],
              ),
              const SizedBox(
                width: 60,
              )
            ],
          ),
        ],
      ),
    );
  }
}
