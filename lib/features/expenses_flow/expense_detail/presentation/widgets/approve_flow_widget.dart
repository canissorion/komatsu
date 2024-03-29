// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/expense_detail_entitie.dart';

class ApproveFlowWidget extends StatelessWidget {
  const ApproveFlowWidget({
    Key? key,
    required this.expenseDetail,
  }) : super(key: key);

  final ExpenseDetailEntitie expenseDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Flujo de Aprobación',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Enviado por',
                info: expenseDetail.issuer.id,
              ),
              const SizedBox(
                width: 40,
              ),
              InformationTitleWidget(
                title: 'Nombre Enviado por',
                info:
                    '${expenseDetail.issuer.firstName} ${expenseDetail.issuer.lastName}',
              )
            ],
          ),
          InformationTitleWidget(
            title: 'Fecha',
            info: dateTimeConverter(expenseDetail.creationDate),
          ),
          InformationTitleWidget(
            title: 'Comentario Solicitante',
            info: expenseDetail.approver.comments,
          )
        ],
      ),
    );
  }
}
