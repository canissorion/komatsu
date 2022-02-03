import '../../domain/entities/approval_element_history_entitie.dart';
import 'approvals_approval_history_model.dart';
import 'approver_model.dart';

class ApprovalElementHistoryModel extends ApprovalElementHistoryEntitie {
  const ApprovalElementHistoryModel({
    required ApprovalsApprovalHistoryModel approval,
    required ApproverHistoryModel approver,
    required String statusInTheFlow,
  }) : super(
          approval: approval,
          approver: approver,
          statusInTheFlow: statusInTheFlow,
        );

  factory ApprovalElementHistoryModel.fromJson(Map<String, dynamic> json) =>
      ApprovalElementHistoryModel(
        approval: ApprovalsApprovalHistoryModel.fromJson(
            json["approval"] as Map<String, dynamic>),
        approver: ApproverHistoryModel.fromJson(
            json["approver"] as Map<String, dynamic>),
        statusInTheFlow: json["statusInTheFlow"] as String,
      );
}
