// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import '../../../../../core/utils/number_format.dart';

import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/expense_solicitude_entitie.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({
    Key? key,
    required this.expenseSolicitude,
  }) : super(key: key);

  final ExpenseSolicitudeEntitie expenseSolicitude;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InformationTitleWidget(
                title: 'Moneda:',
                info: expenseSolicitude.currency.code,
              ),
              /*SizedBox(
                width: MediaQuery.of(context).size.width * 0.34,
              ),*/
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              SizedBox(
                width: 150,
                child: InformationTitleWidget(
                  title: 'Monto:',
                  info: "\$${numberFormat(expenseSolicitude.currency.amount)}",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
