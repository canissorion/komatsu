// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';

import '../../../../../../core/utils/komatsu_colors.dart';
import '../../../../../../shared/presentation/widgets/appbar_widget.dart';
import '../../../../../../shared/presentation/widgets/drawer_widget.dart';
import '../../../../../../shared/presentation/widgets/information_title_widget.dart';

class HesDetailPage extends StatelessWidget {
  const HesDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Liberacion HES',
              style: TextStyle(
                  color: customBlue, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    InformationTitleWidget(
                      title: 'Fecha Registro',
                      info: '19-01-2022',
                    ),
                    InformationTitleWidget(
                      title: 'Posicion OC',
                      info: '0020',
                    ),
                    InformationTitleWidget(
                      title: 'Moneda',
                      info: 'CLP',
                    ),
                    InformationTitleWidget(
                      title: 'Valor Total OC',
                      info: '100.000',
                    ),
                    InformationTitleWidget(
                      title: 'Respuesta',
                      info: 'Lorem',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    InformationTitleWidget(
                      title: 'N Orden',
                      info: '4700019826',
                    ),
                    InformationTitleWidget(
                      title: 'Hoja Entrada Servicio',
                      info: '1001046561',
                    ),
                    InformationTitleWidget(
                      title: 'Valor en Liberacion',
                      info: '100.000',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
