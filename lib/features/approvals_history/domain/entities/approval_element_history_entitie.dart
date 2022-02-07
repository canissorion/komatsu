import 'package:equatable/equatable.dart';

import 'approvals_approval_history_entitie.dart';
import 'approver_entitie.dart';

class ApprovalElementHistoryEntitie extends Equatable {
  final ApprovalsApprovalHistoryEntitie approval;
  final ApproverHistoryEntitie approver;
  final String statusInTheFlow;

  const ApprovalElementHistoryEntitie({
    required this.approval,
    required this.approver,
    required this.statusInTheFlow,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [approval, approver, statusInTheFlow];
}
