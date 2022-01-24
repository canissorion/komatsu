import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/titulo_informacion_widget.dart';
import '../../../../core/utils/komatsu_colors.dart';

import '../../../../shared/presentation/widgets/rectangle_widget.dart';

class DatosResponsable extends StatelessWidget {
  const DatosResponsable({Key? key, required this.detalleRendicion})
      : super(key: key);
  final DetalleRendicionEntitie detalleRendicion;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: TituloInformacionWidget(
                tituloDato: 'Responsable',
                infoDato: detalleRendicion.nombreUsuarioRendicion,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 5),
              child: Text(
                'Estado',
                style: TextStyle(color: customBlue, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5),
              child: RectangleDetails(
                status: detalleRendicion.status,
              ),
            ),
            const SizedBox(
              //width: 40,
              height: 40,
            ),
            TituloInformacionWidget(
              tituloDato: 'Proceso',
              infoDato: detalleRendicion.proceso,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 40,
            ),
            const SizedBox(
              //width: 40,
              height: 40,
            ),
            TituloInformacionWidget(
              tituloDato: 'Anexos',
              infoDato: detalleRendicion.anexos.toString(),
            )
          ],
        )
      ],
    );
  }
}
