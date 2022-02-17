import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/pages/release_oc_detail_page.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/filters_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/mass_action_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/order_release_card_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/search_bar_oc_widget.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/widgets/tab_filter_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/appbar_widget.dart';
import 'package:kcc_mobile_app/shared/presentation/widgets/drawer_widget.dart';

class OrderReleasePage extends StatelessWidget {
  const OrderReleasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Liberación\nOrdenes de Compra',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          const MassActionWidget(),
          const FiltersWidget(),
          const SearchingBarOcWidget(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ReleaseOcDetailPage();
                  },
                ),
              );
            },
            child: const OrderReleaseCardWidget(),
          )
        ],
      ),
    );
  }
}
