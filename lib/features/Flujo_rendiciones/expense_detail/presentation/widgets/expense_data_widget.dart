import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/expense_detail_entitie.dart';

class ExpenseDataWidget extends StatelessWidget {
  const ExpenseDataWidget({
    Key? key,
    required this.expenseDetail,
  }) : super(key: key);

  final ExpenseDetailEntitie expenseDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 20),
            child: Text(
              'Datos de rendición',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          InformationTitleWidget(
            title: 'Empresa',
            info: expenseDetail.expenseReportCompany,
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Oficina de Ventas',
                info: expenseDetail.salesOffice,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.13,
              ),
              InformationTitleWidget(
                title: 'Moneda',
                info: expenseDetail.currency.name,
              ),
            ],
          ),
          InformationTitleWidget(
            title: 'Objetivos del Gasto:',
            info: expenseDetail.expediture.reason,
          )
        ],
      ),
    );
  }
}
