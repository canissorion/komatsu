import 'package:flutter/material.dart';
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
                info: expenseDetail.nombreUsuarioRendicion,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              InformationTitleWidget(
                title: 'RUT:',
                info: expenseDetail.rut,
              ),
            ],
          ),
          InformationTitleWidget(
            title: 'Empresa:',
            info: expenseDetail.empresaRendicion,
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Centro de Costo:',
                info: expenseDetail.centroDeCosto,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.14,
              ),
              InformationTitleWidget(
                title: 'Código empresa:',
                info: expenseDetail.codigoEmpresaUsuario,
              )
            ],
          ),
          Row(
            children: [
              InformationTitleWidget(
                title: 'Código Centro de Costos:',
                info: expenseDetail.codigoCentroDeCostos,
              ),
              InformationTitleWidget(
                title: 'Fecha:',
                info: expenseDetail.fecha,
              )
            ],
          )
        ],
      ),
    );
  }
}
