// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/expense_solicitude_entitie.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({
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
                title: 'Empresa:',
                info: expenseSolicitude.ownersCompany.name,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InformationTitleWidget(
                title: 'Centro de costo',
                info: expenseSolicitude.costCenter.name,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.23,
              ),
              InformationTitleWidget(
                title: 'Código empresa',
                info: expenseSolicitude.ownersCompany.code,
              ),
            ],
          ),
          InformationTitleWidget(
            title: 'Código Centro de Costos',
            info: expenseSolicitude.costCenter.code.toString(),
          ),
        ],
      ),
    );
  }
}
