import 'package:flutter/material.dart';

import 'detalle_individual_widget.dart';

class DetallesConcepto extends StatelessWidget {
  const DetallesConcepto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DetalleIndividual(
          titulo: 'Concepto Gasto',
          valor: 'REUNIONES DE TRABAJO Y CLIENTES',
        ),
        DetalleIndividual(
          titulo: 'Detalle Gasto',
          valor: 'ALMUERZOS Y CENAS',
        ),
        DetalleIndividual(
          titulo: 'Descrición del Gasto',
          valor: 'COLACIÓN',
        ),
        DetalleIndividual(
          titulo: 'Objeto de imputación',
          valor: 'CENTRO DE COSTOS',
        ),
        DetalleIndividual(
          titulo: 'Valor objeto imptación',
          valor: '305060003',
        ),
        DetalleIndividual(
          titulo: 'Importe Asignado',
          valor: '61.905',
        ),
        DetalleIndividual(
          titulo: 'Cuenta',
          valor: '0043013012',
        ),
      ],
    );
  }
}
