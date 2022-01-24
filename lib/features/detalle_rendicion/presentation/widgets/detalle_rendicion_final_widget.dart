import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/detalle_rendicion/domain/entities/detalle_rendicion_entitie.dart';

class DetalleRendicionFinalWidget extends StatelessWidget {
  const DetalleRendicionFinalWidget({Key? key, required this.detalleRendicion})
      : super(key: key);
  final DetalleRendicionEntitie detalleRendicion;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            //width: 40,
            height: 100,
          ),
          Text(
            "Aprobación de gastos ${detalleRendicion.nombreUsuarioRendicion}\n N Folio 408080",
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            //width: 40,
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.check_box,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 20,
                //height: 10,
              ),
              Text(
                "Acción ejecutada correctamente para la tarea\nBn3ee2e887aeb11e7a7300000003555426",
              )
            ],
          )
        ],
      ),
    );
  }
}
