import 'package:flutter/material.dart';
import '../../../../../core/utils/datetime_convert.dart';
import '../../data/models/order_release_resume_list_model.dart';
import 'title_data_widget.dart';

class ApproveOrderResumeWidget extends StatelessWidget {
  const ApproveOrderResumeWidget({
    Key? key,
    required this.orderRelease,
  }) : super(key: key);
  final OrderReleaceResumeList orderRelease;
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
              children: [
                TitleDataWidget(
                  title: 'Fecha Registro',
                  info: dateTimeConverter(orderRelease.data![0].recordDate!),
                ),
                TitleDataWidget(
                  title: 'N Orden',
                  info: orderRelease.data![0].orderNumber!,
                ),
              ],
            ),
            TitleDataWidget(
              title: 'Codigo estrategia',
              info: orderRelease.data![0].requirementTrackingNumber.toString(),
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
