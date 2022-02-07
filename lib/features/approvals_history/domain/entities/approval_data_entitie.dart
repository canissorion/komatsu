import 'package:equatable/equatable.dart';

import 'approval_element_history_entitie.dart';

class ApprovalDataEntitie extends Equatable {
  final int documentTypeId;
  final List<ApprovalElementHistoryEntitie> approvals;

  const ApprovalDataEntitie({
    required this.documentTypeId,
    required this.approvals,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        documentTypeId,
        approvals,
      ];
}
