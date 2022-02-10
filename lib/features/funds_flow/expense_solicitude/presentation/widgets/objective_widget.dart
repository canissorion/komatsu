// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/datetime_convert.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import '../../../../../core/utils/number_format.dart';

import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/expense_solicitude_entitie.dart';

class ObjectiveWidget extends StatelessWidget {
  const ObjectiveWidget({
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
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InformationTitleWidget(
                title: 'Objectivo del Anticipo',
                info: expenseSolicitude.objective.advance,
              ),
            ],
          ),
          InformationTitleWidget(
            title: 'Fecha estimada de rendición',
            info: dateTimeConverter(expenseSolicitude.objective.estimateTime),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10, bottom: 5, right: 30),
            child: Text(
              "El solicitante acuerda que la rendición de estos valores deberá ser efectuada a más tardar 5 días hábiles después de finalizado el viaje o realizada la compra. En caso contrario, acepta el cargo en su cuenta corriente y posterior descuento del valor no rendido.",
              style: TextStyle(color: customBlue, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.04,
          ),
        ],
      ),
    );
  }
}
