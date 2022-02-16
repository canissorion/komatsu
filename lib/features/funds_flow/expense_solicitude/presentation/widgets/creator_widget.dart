// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/expense_solicitude_entitie.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InformationTitleWidget(
                title: 'Nombre:',
                info:
                    '${expenseSolicitude.creator.firstName}, ${expenseSolicitude.creator.lastName}',
              ),
              SizedBox(
                width: 150,
                child: InformationTitleWidget(
                  title: 'RUT:',
                  info: expenseSolicitude.creator.rut,
                ),
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
