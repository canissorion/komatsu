import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../core/utils/number_format.dart';
import '../../domain/entitites/order_release_entitie.dart';
import '../pages/mass_approve_page.dart';
import '../pages/mass_reject_page.dart';
import 'release_oc_button_widget.dart';
import 'title_data_widget.dart';

class ReleaseDetailWidget extends StatelessWidget {
  const ReleaseDetailWidget({Key? key, required this.orderRelease})
      : super(key: key);

  final OrderReleaseEntitie orderRelease;
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
                      info: dateTimeConverter(orderRelease.creationDate),
                    ),
                    TitleDataWidget(
                      title: 'Urg. Neces.',
                      info: orderRelease.record.urgency,
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
                      info: orderRelease.record.orderNumber.toString(),
                    ),
                    TitleDataWidget(
                      title: 'Grp. Compra',
                      info: orderRelease.record.grpOrder.toString(),
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
                      info: orderRelease.provider.providerId.toString(),
                    ),
                    TitleDataWidget(
                      title: 'Nombre Proveedor',
                      info: orderRelease.provider.providerName,
                    ),
                    TitleDataWidget(
                      title: 'Centro',
                      info: orderRelease.center.centerId.toString(),
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
                      info: orderRelease.center.centerName,
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
                          "\$${numberFormat(orderRelease.currency.totalAmount)}",
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
                      info: orderRelease.currency.code,
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
                      info:
                          "${orderRelease.applicant.applicantLastName} ${orderRelease.applicant.applicantFirstName} ",
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
                        info: orderRelease.needNumber.toString()),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    TitleDataWidget(
                      title: 'Org. de Compras',
                      info: orderRelease.purchasingOrg.toString(),
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
                  info:
                      "${orderRelease.liberator.liberatorLastName} ${orderRelease.liberator.liberatorFirstName} ",
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    TitleDataWidget(
                      title: 'Prioridad de la',
                      info: orderRelease.priority,
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
                    primary: customGreen500,
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
                    primary: customRed500,
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
