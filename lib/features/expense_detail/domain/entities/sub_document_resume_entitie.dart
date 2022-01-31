import 'package:equatable/equatable.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/attachment_entitie.dart';
import 'package:kcc_mobile_app/features/expense_detail/domain/entities/sub_document_entitie.dart';

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
