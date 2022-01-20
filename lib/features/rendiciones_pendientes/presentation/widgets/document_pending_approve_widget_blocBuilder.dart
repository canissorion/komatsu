import 'package:flutter/material.dart';
import '../../domain/entities/detalle_documento_entities.dart';
import 'document_pending_approve_widget.dart';

class DocumentPendingApprobe extends StatelessWidget {
  const DocumentPendingApprobe({Key? key, required this.documentPendingApprove})
      : super(key: key);
  final DocumentPendingApprove documentPendingApprove;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Item(datos: documentPendingApprove)],
    );
  }
}
