import 'package:flutter/material.dart';

import '../../domain/entities/detalle_documento_entitie.dart';
import 'detalle_individual_widget.dart';

class DetallesConcepto extends StatelessWidget {
  const DetallesConcepto({Key? key, required this.detalleDocumento})
      : super(key: key);
  final DetalleDocumento detalleDocumento;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetalleIndividual(
          titulo: 'Concepto Gasto',
          valor: detalleDocumento.conceptoGasto,
        ),
        DetalleIndividual(
          titulo: 'Detalle Gasto',
          valor: detalleDocumento.detalleGasto,
        ),
        DetalleIndividual(
          titulo: 'Descrición del Gasto',
          valor: detalleDocumento.descripcionDelGasto,
        ),
        DetalleIndividual(
          titulo: 'Objeto de imputación',
          valor: detalleDocumento.objetoDeImputacion,
        ),
        DetalleIndividual(
          titulo: 'Valor objeto imptación',
          valor: detalleDocumento.valorObjeto,
        ),
        DetalleIndividual(
          titulo: 'Importe Asignado',
          valor: detalleDocumento.importeAsignado,
        ),
        DetalleIndividual(
          titulo: 'Cuenta',
          valor: detalleDocumento.cuenta,
        ),
      ],
    );
  }
}
