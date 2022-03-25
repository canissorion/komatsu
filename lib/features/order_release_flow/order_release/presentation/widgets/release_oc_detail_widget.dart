import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../core/utils/number_format.dart';
import '../../data/models/order_release_resume_list_model.dart';
import '../../domain/entitites/order_release_entitie.dart';
import '../pages/mass_approve_page.dart';
import '../pages/mass_reject_page.dart';
import 'release_oc_button_widget.dart';
import 'title_data_widget.dart';

class ReleaseDetailWidget extends StatelessWidget {
  const ReleaseDetailWidget({Key? key, required this.orderRelease})
      : super(key: key);

  final OrderReleaceResumeList orderRelease;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDataWidget(
                      title: 'Fecha Registro',
                      info: dateTimeConverter(
                          orderRelease.data![0].recordDate!),
                    ),
                    TitleDataWidget(
                      title: 'Urg. Neces.',
                      info: orderRelease.data![0].urgentNeed!,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDataWidget(
                      title: 'N Orden',
                      info: orderRelease.data![0].orderNumber!,
                    ),
                    TitleDataWidget(
                      title: 'Grp. Compra',
                      info: orderRelease.data![0].buyGroup!,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDataWidget(
                      title: 'Proveedor',
                      info: orderRelease.data![0].providerId!,
                    ),
                    TitleDataWidget(
                      title: 'Nombre Proveedor',
                      info: orderRelease.data![0].providerName!,
                    ),
                    TitleDataWidget(
                      title: 'Centro',
                      info: orderRelease.data![0].centerId!,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const TitleDataWidget(
                      title: '',
                      info: '',
                    ),
                    const TitleDataWidget(
                      title: '',
                      info: '',
                    ),
                    TitleDataWidget(
                      title: 'Nombre Centro',
                      info: orderRelease.data![0].centerName!,
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Column(
                  children: [
                    TitleDataWidget(
                      title: 'Monto Total',
                      info:
                          "\$${numberFormat(orderRelease.data![0].totalAmount!.toInt())}",
                    ),
                  ],
                ),
                const SizedBox(
                  width: 44,
                ),
                Column(
                  children: [
                    TitleDataWidget(
                      title: 'Moneda',
                      info: orderRelease.data![0].currency!,
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDataWidget(
                      title: 'Solicitante',
                      info: "${orderRelease.data![0].applicant}",
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    TitleDataWidget(
                        title: 'Num. Necesidad',
                        info: orderRelease.data![0].freeNumber!),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    TitleDataWidget(
                      title: 'Org. de Compras',
                      info:
                          orderRelease.data![0].purchasingOrganization!,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Column(
              children: [
                TitleDataWidget(
                  title: 'Usuario Liberador',
                  info: "${orderRelease.data![0].liberatingUser} ",
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    TitleDataWidget(
                      title: 'Prioridad de la',
                      info: orderRelease.data![0].orderPriority!,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 33,
                ),
                ReleasebuttonWidget(
                  orderRelease: orderRelease,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const MassApprovePage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'APROBAR',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const MassRejectPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'RECHAZAR',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
