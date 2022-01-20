import 'package:flutter/material.dart';
import '../../domain/entities/detalle_rendicion_entitie.dart';
import 'titulo_informacion_widget.dart';

class FlujoAprobacionWidget extends StatelessWidget {
  const FlujoAprobacionWidget({
    Key? key,
    required this.detalleRendicion,
  }) : super(key: key);

  final DetalleRendicionEntitie detalleRendicion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Flujo de Aprobación',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          Row(
            children: [
              TituloInformacionWidget(
                tituloDato: 'Enviado por',
                infoDato: detalleRendicion.enviadoPor,
              ),
              const SizedBox(
                width: 40,
              ),
              TituloInformacionWidget(
                tituloDato: 'Nombre Enviado por',
                infoDato: detalleRendicion.nombreEnviador,
              )
            ],
          ),
          TituloInformacionWidget(
            tituloDato: 'Enviado a',
            infoDato: detalleRendicion.enviadoA,
          ),
          TituloInformacionWidget(
            tituloDato: 'Fecha',
            infoDato: detalleRendicion.fechaEnvio,
          ),
          TituloInformacionWidget(
            tituloDato: 'Estado',
            infoDato: detalleRendicion.estado,
          ),
          TituloInformacionWidget(
            tituloDato: 'Comentario de Aprobador',
            infoDato: detalleRendicion.comentarioAprobador,
          )
        ],
      ),
    );
  }
}
