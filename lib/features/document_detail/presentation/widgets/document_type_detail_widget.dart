import 'package:flutter/material.dart';
import 'package:kcc_mobile_app/features/document_detail/presentation/widgets/attachment_button_widget.dart';
import 'package:kcc_mobile_app/features/view_document/presentation/pages/view_document_page.dart';

import '../../domain/entities/document_detail_entitie.dart';
import 'individual_detail_widget.dart';

class DocumentTypeDetailWidget extends StatelessWidget {
  const DocumentTypeDetailWidget({Key? key, required this.documentDetail})
      : super(key: key);

  final DocumentDetailEntitie documentDetail;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IndividualDetailWidget(
              title: 'Tipo Documento',
              value: documentDetail.tipoDocumento,
            ),
            IndividualDetailWidget(
              title: 'Rut Emisor',
              value: documentDetail.rutEmisor,
            ),
            IndividualDetailWidget(
              title: 'Tipo Documento',
              value: documentDetail.tipoDocumento,
            ),
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IndividualDetailWidget(
              title: 'Fecha',
              value: documentDetail.fecha.toString(),
            ),
            IndividualDetailWidget(
              title: 'Subtipo',
              value: documentDetail.subtipo,
            ),
            IndividualDetailWidget(
              title: 'N° de Documento',
              value: documentDetail.numeroDocumento,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ViewDocumentPage();
                    },
                  ),
                );
              },
              child: const AttachmentButtonWidget(),
            )
          ],
        ),
      ],
    );
  }
}
