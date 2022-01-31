// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/expense_detail_entitie.dart';

class FinalExpenseDetailWidget extends StatelessWidget {
  const FinalExpenseDetailWidget({Key? key, required this.expenseDetail})
      : super(key: key);
  final ExpenseDetailEntitie expenseDetail;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            //width: 40,
            height: 100,
          ),
          Text(
            "Aprobación de gastos ${expenseDetail.owner.firstName} ${expenseDetail.owner.lastName}\n N Folio 408080",
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            //width: 40,
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.check_box,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20,
                //height: 10,
              ),
              Text(
                "Acción ejecutada correctamente para la tarea\nBn3ee2e887aeb11e7a7300000003555426",
              )
            ],
          )
        ],
      ),
    );
  }
}
