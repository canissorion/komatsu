import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/pages/mass_reject_completed_page.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/mass_action_title_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/reason_field_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/reject_order_resume_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/title_data_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

class MassRejectPage extends StatelessWidget {
  const MassRejectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          MassActionTitleWidget(),
          RejectOrderResumeWidget(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red[400],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MassRejectCompletedPage();
                  },
                ),
              );
            },
            child: const Text(
              'RECHAZAR',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
