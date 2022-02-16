// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import '../../../../../core/utils/datetime_convert.dart';

import '../../../../../core/utils/komatsu_colors.dart';
import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../../../../shared/presentation/widgets/rectangle_widget.dart';
import '../../domain/entities/expense_solicitude_entitie.dart';

class AuthorizerWidget extends StatelessWidget {
  const AuthorizerWidget({Key? key, required this.expenseSolicitude})
      : super(key: key);
  final ExpenseSolicitudeEntitie expenseSolicitude;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          //width: 300,
          child: InformationTitleWidget(
            title: 'Autorizador',
            info:
                '${expenseSolicitude.authorizer.lastName}, ${expenseSolicitude.authorizer.firstName}',
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                top: 10,
                bottom: 5,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Estado",
                    style: TextStyle(color: customBlue),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.0),
                    child: RectangleDetails(
                      status: 1,
                    ),
                  ),
                ],
              ),
            ),
            /*SizedBox(
              width: MediaQuery.of(context).size.width * 0.08,
            ),*/
            SizedBox(
              width: 142,
              child: InformationTitleWidget(
                title: 'Fecha',
                info: dateTimeConverter(expenseSolicitude.creationDate),
              ),
            )
          ],
        ),
      ],
    );
  }
}
