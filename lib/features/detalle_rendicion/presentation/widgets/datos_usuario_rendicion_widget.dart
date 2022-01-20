import 'package:flutter/material.dart';
import '../../domain/entities/detalle_rendicion_entitie.dart';
import 'titulo_informacion_widget.dart';

class DatosUsuarioRendicionWidget extends StatelessWidget {
  const DatosUsuarioRendicionWidget({
    Key? key,
    required this.detalleRendicion,
  }) : super(key: key);

  final DetalleRendicionEntitie detalleRendicion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 20),
            child: Text(
              'Datos de usuario rendición',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          Row(
            children: [
              TituloInformacionWidget(
                tituloDato: 'Nombre:',
                infoDato: detalleRendicion.nombreUsuarioRendicion,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              TituloInformacionWidget(
                tituloDato: 'RUT:',
                infoDato: detalleRendicion.rut,
              ),
            ],
          ),
          TituloInformacionWidget(
            tituloDato: 'Empresa:',
            infoDato: detalleRendicion.empresaRendicion,
          ),
          Row(
            children: [
              TituloInformacionWidget(
                tituloDato: 'Centro de Costo:',
                infoDato: detalleRendicion.centroDeCosto,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.14,
              ),
              TituloInformacionWidget(
                tituloDato: 'Código empresa:',
                infoDato: detalleRendicion.codigoEmpresaUsuario,
              )
            ],
          ),
          Row(
            children: [
              TituloInformacionWidget(
                tituloDato: 'Código Centro de Costos:',
                infoDato: detalleRendicion.codigoCentroDeCostos,
              ),
              TituloInformacionWidget(
                tituloDato: 'Fecha:',
                infoDato: detalleRendicion.fecha,
              )
            ],
          )
        ],
      ),
    );
  }
}
