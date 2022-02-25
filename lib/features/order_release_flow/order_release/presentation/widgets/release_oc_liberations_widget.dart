import 'package:flutter/material.dart';
import '../../../../../core/utils/datetime_convert.dart';
import '../../../../../core/utils/komatsu_colors.dart';
import '../../domain/entitites/order_release_entitie.dart';
import '../pages/release_oc_detail_page.dart';

class ReleaseLiberationsWidget extends StatelessWidget {
  const ReleaseLiberationsWidget({Key? key, required this.orderRelease})
      : super(key: key);
  final OrderReleaseEntitie orderRelease;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'LIBERACIONES',
            style: TextStyle(
              color: customBlue,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          color: customBlue,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDataBlueWidget(
                      title: 'Fecha Lib',
                      data: dateTimeConverter(
                          orderRelease.liberation.liberationDate),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    TitleDataBlueWidget(
                      title: 'Enviado',
                      data: orderRelease.liberation.sendTo,
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDataBlueWidget(
                      title: 'Usuario',
                      data: orderRelease.liberator.liberatorId,
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    TitleDataBlueWidget(
                      title: 'Estatus Liberacion',
                      data: orderRelease.liberation.liberationStatus,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TitleDataBlueWidget(
                  title: 'Nombre Liberador',
                  data:
                      "${orderRelease.liberator.liberatorFirstName} ${orderRelease.liberator.liberatorLastName} ",
                ),
                const SizedBox(
                  height: 10,
                ),
                TitleDataBlueWidget(
                  title: 'Correo',
                  data: orderRelease.liberator.mail,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
