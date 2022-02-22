import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/core/utils/komatsu_colors.dart';

class MassActionTitleWidget extends StatelessWidget {
  const MassActionTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: customAccentBlue,
                      size: 17,
                    ),
                    Text(
                      'Atras',
                      style: TextStyle(color: customAccentBlue),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Acción Masiva',
                  style: TextStyle(
                    color: customBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Ordenes de Compra',
                  style: TextStyle(
                    color: customBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          const Text(
            'Cerrar',
            style: TextStyle(color: customAccentBlue),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
