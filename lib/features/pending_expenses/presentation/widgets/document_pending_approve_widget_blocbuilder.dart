import 'package:flutter/material.dart';
import '../../domain/entities/pending_document_detail_entitie.dart';
import 'document_pending_approve_widget.dart';

class DocumentPendingApprobe extends StatelessWidget {
  const DocumentPendingApprobe({Key? key, required this.pendingDocumentDetail})
      : super(key: key);
  final PendingDocumentDetailEntitie pendingDocumentDetail;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Item(data: pendingDocumentDetail)],
    );
  }
}
