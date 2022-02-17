import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/mass_action_title_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/title_data_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

class MassApproveCompletedPage extends StatelessWidget {
  const MassApproveCompletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          const MassActionTitleWidget(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.check_box,
                        color: Colors.green,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                        //height: 10,
                      ),
                      Text(
                        "Aprobacion masiva de ordenes de Compra",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TitleDataWidget(title: 'N Orden', info: '4506275811'),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Accion concluida exitosamente.',
                    style: TextStyle(
                      color: customBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
