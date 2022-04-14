import 'package:equatable/equatable.dart';
import 'Approvals_history_funds_approver_entitie.dart';
import 'approvals_history_funds_approval_flow_entitie.dart';
import 'approvals_history_funds_sendTo_entitie.dart';

class ApprovalElementEntitie extends Equatable {
  const ApprovalElementEntitie({
    required this.approval,
    required this.approver,
    required this.statusInTheFlow,
    required this.sendTo,
    required this.receivedDate,
  });

  final ApprovalFlowEntitie approval;
  final ApproverEntitie approver;
  final String statusInTheFlow;
  final SendToEntitie sendTo;
  final int receivedDate;

  @override
  List<Object?> get props => [approval, approver, statusInTheFlow, sendTo];
}
