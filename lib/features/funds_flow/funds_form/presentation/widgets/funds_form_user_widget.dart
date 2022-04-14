// ignore_for_file: lines_longer_than_80_chars, prefer_relative_imports

import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/funds_form_entitie.dart';

class UserFundsWidget extends StatelessWidget {
  const UserFundsWidget({Key? key, required this.fundsForm}) : super(key: key);
  final FundsFormEntitie fundsForm;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  //width: 300,
                  child: InformationTitleWidget(
                    title: 'Fecha',
                    info: dateTimeConverter(fundsForm.date),
                  ),
                ),
                SizedBox(
                  //width: 300,
                  child: InformationTitleWidget(
                    title: 'Nombre',
                    info:
                        '${fundsForm.user.firstName} ${fundsForm.user.lastName}',
                  ),
                ),
                SizedBox(
                  //width: 300,
                  child: InformationTitleWidget(
                    title: 'Centro de costo',
                    info: fundsForm.costCenterForm.name,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  //width: 300,
                  child: InformationTitleWidget(
                    title: 'Usuario',
                    info: fundsForm.user.id,
                  ),
                ),
                SizedBox(
                  //width: 300,
                  child: InformationTitleWidget(
                    title: 'RUT',
                    info: fundsForm.user.rut,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 10,
                    bottom: 5,
                    right: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cod. Centro de costo',
                        style: TextStyle(color: customBlue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          fundsForm.costCenterForm.code.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          //width: 300,
          child: InformationTitleWidget(
            title: 'Empresa',
            info: fundsForm.company.name,
          ),
        ),
        SizedBox(
          //width: 300,
          child: InformationTitleWidget(
            title: 'Código Empresa',
            info: fundsForm.company.code,
          ),
        ),
      ],
    );
  }
}
