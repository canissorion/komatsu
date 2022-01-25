import 'package:flutter/material.dart';
import '../../domain/entities/expense_detail_entitie.dart';
import 'information_title_widget.dart';

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
            info: expenseDetail.empresaRendicion,
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Oficina de Ventas',
                info: expenseDetail.oficinaDeVentas,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.13,
              ),
              InformationTitleWidget(
                title: 'Moneda',
                info: expenseDetail.moneda,
              ),
            ],
          ),
          InformationTitleWidget(
            title: 'Objetivos del Gasto:',
            info: expenseDetail.objetivoDelGasto,
          )
        ],
      ),
    );
  }
}
