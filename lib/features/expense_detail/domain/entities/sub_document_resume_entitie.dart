import 'package:equatable/equatable.dart';
import 'attachment_entitie.dart';
import 'sub_document_entitie.dart';

class SubDocumentResumeEntitie extends Equatable {
  const SubDocumentResumeEntitie({
    required this.subDocument,
    required this.dispatchersRut,
    required this.attachment,
  });

  final SubDocumentEntitie subDocument;
  final String dispatchersRut;
  final AttachmentEntitie attachment;

  @override
  List<Object?> get props => [subDocument, dispatchersRut, attachment];
}
