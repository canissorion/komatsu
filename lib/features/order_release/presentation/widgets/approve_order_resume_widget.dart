import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/reason_field_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/title_data_widget.dart';

class ApproveOrderResumeWidget extends StatelessWidget {
  const ApproveOrderResumeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                TitleDataWidget(
                  title: 'Fecha Registro',
                  info: '2022-01-27',
                ),
                TitleDataWidget(
                  title: 'N Orden',
                  info: '4506275811',
                ),
              ],
            ),
            const TitleDataWidget(
              title: 'Codigo estrategia',
              info: '20000000915',
            ),
            const Divider(
              thickness: 3,
              indent: 10,
              endIndent: 10,
            )
          ],
        ),
      ),
    );
  }
}
