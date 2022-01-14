import 'package:flutter/material.dart';
import '../../../ver_documento/presentation/pages/ver_documentos_page.dart';
import 'detalle_individual_widget.dart';

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
          children: [
            const DetalleIndividual(
              titulo: 'Fecha',
              valor: '2022-08-02',
            ),
            const DetalleIndividual(
              titulo: 'Subtipo',
              valor: 'Boleta de Gasto',
            ),
            const DetalleIndividual(
              titulo: 'N° de Documento',
              valor: '66',
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const VerDocumentoPage();
                    },
                  ),
                );
              },
              child: const Placeholder(
                fallbackHeight: 40,
                fallbackWidth: 160,
              ),
            )
          ],
        ),
      ],
    );
  }
}
