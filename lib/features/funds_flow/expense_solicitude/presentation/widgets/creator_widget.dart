// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/datetime_convert.dart';
import 'package:kcc_mobile_app/features/funds_flow/expense_solicitude/domain/entities/expense_solicitude_entitie.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/information_title_widget.dart';

class CreatorWidget extends StatelessWidget {
  const CreatorWidget({
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
            children: [
              InformationTitleWidget(
                title: 'Nombre:',
                info:
                    '${expenseSolicitude.creator.firstName}, ${expenseSolicitude.creator.lastName}',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              InformationTitleWidget(
                title: 'RUT:',
                info: expenseSolicitude.creator.rut,
              ),
            ],
          ),
          InformationTitleWidget(
            title: 'Usuario:',
            info: expenseSolicitude.creator.id,
          ),
        ],
      ),
    );
  }
}
