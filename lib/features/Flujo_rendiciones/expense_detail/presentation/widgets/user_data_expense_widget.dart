import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/datetime_convert.dart';

import '../../domain/entities/expense_detail_entitie.dart';
import 'information_title_widget.dart';

class UserDataExpenseWidget extends StatelessWidget {
  const UserDataExpenseWidget({
    Key? key,
    required this.expenseDetail,
  }) : super(key: key);

  final ExpenseDetailEntitie expenseDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 20),
            child: Text(
              'Datos de usuario rendición',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Nombre:',
                info:
                    '${expenseDetail.owner.lastName},${expenseDetail.owner.firstName}',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              InformationTitleWidget(
                title: 'RUT:',
                info: expenseDetail.owner.rut,
              ),
            ],
          ),
          InformationTitleWidget(
            title: 'Empresa:',
            info: expenseDetail.expenseReportCompany,
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Centro de Costo:',
                info: expenseDetail.costCenter.name,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.14,
              ),
              InformationTitleWidget(
                title: 'Código empresa:',
                info: expenseDetail.ownersCompany.code.toString(),
              )
            ],
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Código Centro de Costos:',
                info: expenseDetail.costCenter.code.toString(),
              ),
              InformationTitleWidget(
                title: 'Fecha:',
                info: dateTimeConverter(expenseDetail.creationDate),
              )
            ],
          )
        ],
      ),
    );
  }
}
