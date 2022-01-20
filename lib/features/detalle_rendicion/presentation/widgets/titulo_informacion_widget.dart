import 'package:flutter/material.dart';
import '../../../../core/utils/komatsu_colors.dart';

class TituloInformacionWidget extends StatelessWidget {
  const TituloInformacionWidget({
    Key? key,
    required this.tituloDato,
    required this.infoDato,
  }) : super(key: key);

  final String tituloDato;
  final String infoDato;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 5, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tituloDato,
            style: const TextStyle(color: customBlue),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              infoDato,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
