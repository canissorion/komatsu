import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/detalle_documento/presentation/pages/detalle_documento_page.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/cierre_tarea_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/datos_rendicion_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/datos_usuario_rendicion_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/flujo_aprobacion_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/responsible_details_widget.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/presentation/widgets/resumen_rendicion_widget.dart';

class DetalleRendicionWidget extends StatelessWidget {
  const DetalleRendicionWidget({
    Key? key,
    required this.detalleRendicion,
    required this.mark,
  }) : super(key: key);

  final DetalleRendicionEntitie detalleRendicion;
  final bool mark;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {},
                  child: DatosResponsable(
                    detalleRendicion: detalleRendicion,
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
          DatosUsuarioRendicionWidget(
            detalleRendicion: detalleRendicion,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          DatosRendicionWidget(
            detalleRendicion: detalleRendicion,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          ResumenRendicionWidget(
            detalleRendicion: detalleRendicion,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          FlujoAprobacionWidget(
            detalleRendicion: detalleRendicion,
          ),
          const Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CierreTareaWidget(
              detalleRendicion: detalleRendicion,
              checked: mark,
            ),
          ),
        ],
      ),
    );
  }
}
