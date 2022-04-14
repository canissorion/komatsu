// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import '../../domain/entities/expense_solicitude_entitie.dart';

class FinalExpenseFundsWidget extends StatelessWidget {
  const FinalExpenseFundsWidget({
    Key? key,
    required this.expenseSolicitude,
    required this.option,
  }) : super(key: key);
  final ExpenseSolicitudeEntitie expenseSolicitude;
  final bool option;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Text(
                "Aprobación de fondos ${expenseSolicitude.authorizer.firstName} ${expenseSolicitude.authorizer.lastName}\nN° de Folio ${expenseSolicitude.documentNumber}",
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                width: 70,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              if (option)
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              else
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              const SizedBox(
                width: 20,
              ),
              if (option)
                const Text(
                  "Acción ejecutada correctamente para la tarea\nBn3ee2e887aeb11e7a7300000003555426",
                )
              else
                const Text(
                  "Se ha rechazado la tarea\nBn3ee2e887aeb11e7a7300000003555426",
                )
            ],
          )
        ],
      ),
    );
  }
}
