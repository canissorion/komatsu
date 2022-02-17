import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/pages/mass_approve_completed_page.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/pages/mass_approve_page.dart';
import 'package:kcc_mobile_app/features/order_release/presentation/pages/mass_reject_page.dart';

class MassActionWidget extends StatelessWidget {
  const MassActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width,
      color: customBlue,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Acción Masiva',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17),
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
                  'LIBERAR',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[400],
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
              )
            ],
          )
        ],
      ),
    );
  }
}
