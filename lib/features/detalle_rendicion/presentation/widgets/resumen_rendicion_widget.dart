import 'package:flutter/material.dart';
import '../../../../core/utils/komatsu_colors.dart';
import '../../domain/entities/detalle_rendicion_entitie.dart';

class ResumenRendicionWidget extends StatelessWidget {
  const ResumenRendicionWidget({
    Key? key,
    required this.detalleRendicion,
  }) : super(key: key);

  final DetalleRendicionEntitie detalleRendicion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Resumen de rendición',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Gastos',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'IVA',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Retención',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Vales',
                    style: TextStyle(color: customBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Saldo por pagar al trabajador',
                    style: TextStyle(color: customBlue),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$ ${detalleRendicion.gastos}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${detalleRendicion.iva}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${detalleRendicion.rentencin}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${detalleRendicion.vales}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ ${detalleRendicion.saldoPorPagar}',
                  ),
                ],
              ),
              const SizedBox(
                width: 60,
              )
            ],
          ),
        ],
      ),
    );
  }
}
