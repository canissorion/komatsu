import 'package:flutter/material.dart';
import '../../../../../core/utils/komatsu_colors.dart';

class FundsFormHeaderTitleWidget extends StatelessWidget {
  // ignore: lines_longer_than_80_chars
  const FundsFormHeaderTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: customAccentBlue,
                ),
                Text(
                  'Volver',
                  style: TextStyle(color: customAccentBlue),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 10,
              ),
              Text(
                'Formulario de solicitud \nde Fondos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          const Expanded(child: SizedBox()),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Cerrar',
              style: TextStyle(color: customAccentBlue),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
