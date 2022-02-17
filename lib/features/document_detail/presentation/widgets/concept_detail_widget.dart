import 'package:flutter/material.dart';

import '../../domain/entities/document_detail_entitie.dart';
import 'individual_detail_widget.dart';

class ConceptDetailWidget extends StatelessWidget {
  const ConceptDetailWidget({Key? key, required this.documentDetail})
      : super(key: key);
  final DocumentDetailEntitie documentDetail;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IndividualDetailWidget(
          title: 'Concepto Gasto',
          value: documentDetail.conceptoGasto,
        ),
        IndividualDetailWidget(
          title: 'Detalle Gasto',
          value: documentDetail.detalleGasto,
        ),
        IndividualDetailWidget(
          title: 'Descrición del Gasto',
          value: documentDetail.descripcionDelGasto,
        ),
        IndividualDetailWidget(
          title: 'Objeto de imputación',
          value: documentDetail.objetoDeImputacion,
        ),
        IndividualDetailWidget(
          title: 'Valor objeto imptación',
          value: documentDetail.valorObjeto,
        ),
        IndividualDetailWidget(
          title: 'Importe Asignado',
          value: documentDetail.importeAsignado,
        ),
        IndividualDetailWidget(
          title: 'Cuenta',
          value: documentDetail.cuenta,
        ),
      ],
    );
  }
}
