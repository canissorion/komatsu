// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/funds_flow/funds_form/presentation/widgets/funds_form_title_and_date_widget.dart';
import 'package:kcc_mobile_app/features/funds_flow/funds_form/presentation/widgets/funds_form_title_and_selector_widget.dart';
import 'package:kcc_mobile_app/features/funds_flow/funds_form/presentation/widgets/funds_form_title_and_textfield_widget.dart';

import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../shared/presentation/widgets/information_title_widget.dart';
import '../../domain/entities/funds_form_entitie.dart';

class CurrencyFundsWidget extends StatelessWidget {
  const CurrencyFundsWidget({Key? key, required this.fundsForm})
      : super(key: key);
  final FundsFormEntitie fundsForm;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 13.0,
                      top: 20,
                      bottom: 5,
                      //right: 100,
                    ),
                    child: TitleAndSelectorWidget(
                      title: "Moneda",
                      items: ["DOLAR"],
                      titleColor: customBlue,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.37,
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 13.0,
                      top: 20,
                      bottom: 5,
                      //right: 100,
                    ),
                    child: TitleAndDateWidget(
                      title: "Fecha de Rendición",
                      titleColor: customBlue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 13.0,
                  top: 20,
                  bottom: 5,
                  //right: 100,
                ),
                child: TitleAndTextfieldWidget(
                  title: "Monto",
                  titleColor: customBlue,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ],
    );
  }
}
