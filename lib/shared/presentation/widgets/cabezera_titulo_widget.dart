import 'package:flutter/material.dart';
import '../../../core/utils/komatsu_colors.dart';

class CabezeraTitulo extends StatelessWidget {
  const CabezeraTitulo({
    Key? key,
  }) : super(key: key);

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
            children: const [
              SizedBox(
                height: 10,
              ),
              Text(
                'DETALLE DE DOCUMENTOS',
                style: TextStyle(
                  color: customBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FOLIO #0004646',
                style: TextStyle(
                  color: customBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Posición 1',
                style: TextStyle(
                  color: customBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          const Expanded(child: SizedBox()),
          const Text(
            'Cerrar',
            style: TextStyle(color: customAccentBlue),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
