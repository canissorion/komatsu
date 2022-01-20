import 'package:flutter/material.dart';

import '../../../ver_documento/presentation/pages/ver_documentos_page.dart';
import '../../domain/entities/detalle_documento_entitie.dart';
import 'detalle_individual_widget.dart';

class DetalleTipoDocumento extends StatelessWidget {
  const DetalleTipoDocumento({Key? key, required this.detalleDocumento})
      : super(key: key);

  final DetalleDocumento detalleDocumento;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetalleIndividual(
              titulo: 'Tipo Documento',
              valor: detalleDocumento.tipoDocumento,
            ),
            DetalleIndividual(
              titulo: 'Rut Emisor',
              valor: detalleDocumento.rutEmisor,
            ),
            DetalleIndividual(
              titulo: 'Tipo Documento',
              valor: detalleDocumento.tipoDocumento,
            ),
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetalleIndividual(
              titulo: 'Fecha',
              valor: detalleDocumento.fecha.toString(),
            ),
            DetalleIndividual(
              titulo: 'Subtipo',
              valor: detalleDocumento.subtipo,
            ),
            DetalleIndividual(
              titulo: 'N° de Documento',
              valor: detalleDocumento.numeroDocumento,
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
