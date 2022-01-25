import 'package:flutter/material.dart';
import '../../domain/entities/expense_detail_entitie.dart';
import 'information_title_widget.dart';

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
                info: expenseDetail.enviadoPor,
              ),
              const SizedBox(
                width: 40,
              ),
              InformationTitleWidget(
                title: 'Nombre Enviado por',
                info: expenseDetail.nombreEnviador,
              )
            ],
          ),
          InformationTitleWidget(
            title: 'Enviado a',
            info: expenseDetail.enviadoA,
          ),
          InformationTitleWidget(
            title: 'Fecha',
            info: expenseDetail.fechaEnvio,
          ),
          InformationTitleWidget(
            title: 'Estado',
            info: expenseDetail.estado,
          ),
          InformationTitleWidget(
            title: 'Comentario de Aprobador',
            info: expenseDetail.comentarioAprobador,
          )
        ],
      ),
    );
  }
}
