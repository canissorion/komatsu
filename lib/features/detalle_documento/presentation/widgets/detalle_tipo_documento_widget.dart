import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/widgets/detalle_individual_widget.dart';

class DetalleTipoDocumento extends StatelessWidget {
  const DetalleTipoDocumento({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DetalleIndividual(
              titulo: 'Tipo Documento',
              valor: 'Boleta de Gasto',
            ),
            DetalleIndividual(
              titulo: 'Rut Emisor',
              valor: '11.111.111-1',
            ),
            DetalleIndividual(
              titulo: 'Tipo Documento',
              valor: 'Boleta de Gasto',
            ),
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DetalleIndividual(
              titulo: 'Fecha',
              valor: '2022-08-02',
            ),
            DetalleIndividual(
              titulo: 'Subtipo',
              valor: 'Boleta de Gasto',
            ),
            DetalleIndividual(
              titulo: 'N° de Documento',
              valor: '66',
            ),
            Placeholder(
              fallbackHeight: 40,
              fallbackWidth: 160,
            )
          ],
        ),
      ],
    );
  }
}
