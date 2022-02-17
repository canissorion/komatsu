import 'package:equatable/equatable.dart';

import 'approvals_history_funds_appoval_element_entitie.dart';

class ApprovalsHistoryFundsEntitie extends Equatable {
  const ApprovalsHistoryFundsEntitie({
    required this.documentTypeId,
    required this.approvals,
  });

  final int documentTypeId;
  final List<ApprovalElementEntitie> approvals;

  @override
  List<Object?> get props => [documentTypeId, approvals];
}
