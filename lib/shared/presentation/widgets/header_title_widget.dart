import 'package:flutter/material.dart';

import '../../../core/utils/komatsu_colors.dart';

class HeaderTitleWidget extends StatelessWidget {
  // ignore: lines_longer_than_80_chars
  const HeaderTitleWidget({
    Key? key,
    required this.invoiceNumber,
    this.position,
  }) : super(key: key);

  final String invoiceNumber;
  final bool? position;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
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
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'DETALLE DE DOCUMENTOS',
                style: TextStyle(
                  color: customBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FOLIO #$invoiceNumber',
                style: const TextStyle(
                  color: customBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (position != null && position!)
                const Text(
                  'Posición 1',
                  style: TextStyle(
                    color: customBlue,
                    fontWeight: FontWeight.bold,
                  ),
                )
              else
                Container(),
              const SizedBox(
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
