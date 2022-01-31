import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/expense_detail_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/presentation/widgets/information_title_widget.dart';
import '../../../../core/utils/komatsu_colors.dart';

import '../../../../shared/presentation/widgets/rectangle_widget.dart';

class ResponsibleData extends StatelessWidget {
  const ResponsibleData({Key? key, required this.expenseDetail})
      : super(key: key);
  final ExpenseDetailEntitie expenseDetail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: InformationTitleWidget(
                title: 'Responsable',
                info:
                    '${expenseDetail.manager.lastName},${expenseDetail.manager.firstName}',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 5),
              child: Text(
                'Estado',
                style: TextStyle(color: customBlue, fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 5),
              child: RectangleDetails(
                status: 1,
              ),
            ),
            const SizedBox(
              //width: 40,
              height: 40,
            ),
            InformationTitleWidget(
              title: 'Proceso',
              info: expenseDetail.documentType.name,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 40,
            ),
            const SizedBox(
              //width: 40,
              height: 40,
            ),
            InformationTitleWidget(
              title: 'Anexos',
              info: expenseDetail.annexes.toString(),
            )
          ],
        )
      ],
    );
  }
}
