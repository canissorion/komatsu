import 'package:flutter/material.dart';
import '../../domain/entities/detalle_rendicion_entitie.dart';
import 'titulo_informacion_widget.dart';

class DatosRendicionWidget extends StatelessWidget {
  const DatosRendicionWidget({
    Key? key,
    required this.detalleRendicion,
  }) : super(key: key);

  final DetalleRendicionEntitie detalleRendicion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 20),
            child: Text(
              'Datos de rendición',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          TituloInformacionWidget(
            tituloDato: 'Empresa',
            infoDato: detalleRendicion.empresaRendicion,
          ),
          Row(
            children: [
              TituloInformacionWidget(
                tituloDato: 'Oficina de Ventas',
                infoDato: detalleRendicion.oficinaDeVentas,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.13,
              ),
              TituloInformacionWidget(
                tituloDato: 'Moneda',
                infoDato: detalleRendicion.moneda,
              ),
            ],
          ),
          TituloInformacionWidget(
            tituloDato: 'Objetivos del Gasto:',
            infoDato: detalleRendicion.objetivoDelGasto,
          )
        ],
      ),
    );
  }
}
